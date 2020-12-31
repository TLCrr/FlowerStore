package TLC.servlet;

import TLC.dao.UserDao;
import TLC.dao.impl.UserDaoimpl;
import TLC.pojo.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns="/UserServlet")
public class UserServlet extends HttpServlet {
    UserDao userdao=new UserDaoimpl();//实现功能的对象
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String method=request.getParameter("method");
        if("delete".equals(method)){
            delete(request,response);
        }
        else{
           // request.getRequestDispatcher("adduser.jsp").forward(request, response);
            add(request,response);
        }
    }

    private void add(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        User user = new User(username,password);
        int count= userdao.addUser(user);
        if(count>0)
        {
            List<User> list=userdao.findUser();
            request.getSession().setAttribute("userList", list);
        }
        request.getRequestDispatcher("user.jsp").forward(request, response);
    }

    private void delete(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {
        int uid=Integer.parseInt(request.getParameter("uid"));
        int count=userdao.deleteUser(uid);
        if(count>0){
            List<User> list=userdao.findUser();
            request.getSession().setAttribute("userList", list);
        }
        request.getRequestDispatcher("user.jsp").forward(request, response);
    }


}
