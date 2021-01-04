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

@WebServlet(urlPatterns="/change_passwordServlet")
public class change_passwordServlet extends HttpServlet {
    UserDao userdao=new UserDaoimpl();//实现功能的对象
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String password=request.getParameter("password");
        String password1=request.getParameter("password1");
        User user1=(User)request.getSession().getAttribute("SESSION_user");//获取sessionde 值
        String username=user1.getUsername();
       // request.getSession().setAttribute("user", user);
        // request.getSession().setAttribute("user", user);
        //新request.getParameter("username");
        if(password!=password1){
        int count= userdao.update_password(password,password1,username);//password是新密码，password1是旧密码
        if(count>0)
        {
            List<User> list=userdao.findUser();
            request.getSession().setAttribute("userList", list);
        }
        request.getRequestDispatcher("user.jsp").forward(request, response);
    }}
}
