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

//@WebServlet注解就可以修改该servlet的属性了。
@WebServlet(urlPatterns="/findUserServlet")
public class findUserServlet extends HttpServlet {
    UserDao userdao=new UserDaoimpl();//实现功能的对象
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);

//        等级
//                doGet,doPost
//        doGet 是处理 GET请求 如:url:http:../test.jsp?a=1
//        doPost 是处理POST请求
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        showDetail(request,response);
        //
    }

    private void showDetail(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {
        String username=request.getParameter("username");
        User user=userdao.showUserByUsername(username);
        request.setAttribute("userDetail", user);//request对象中加入名为：user的属性，其值为字符串user的值
        request.getRequestDispatcher("finduser.jsp").forward(request, response);//这个方法会将参数传会finduser.jsp页面..而浏览器的地址栏也不会显示finduser.jsp,显示的会是你处理操作的那个页面
    }

}
