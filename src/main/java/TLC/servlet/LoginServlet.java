package TLC.servlet;

import TLC.dao.UserDao;
import TLC.dao.impl.UserDaoimpl;
import TLC.pojo.User;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(urlPatterns="/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UserDao userdao=new UserDaoimpl();//实现功能的对象
    public LoginServlet() { super();}
    protected void rememberMe(String rememberMe,
			String username,
			String password,
			HttpServletRequest request,
			HttpServletResponse response)throws ServletException, IOException

    {
		 //代码区域
		if("true".equals(rememberMe))
		{
			//记住用户名和密码
			Cookie cookie=new Cookie("COOKIE_username",username);
		    cookie.setPath("/");//任何页面都能访问到cookie
			cookie.setMaxAge(365*24*60*60);//使用时间
			response.addCookie(cookie);
			cookie=new Cookie("COOKIE_password",password);
		    cookie.setPath("/");
			cookie.setMaxAge(365*24*60*60);
			response.addCookie(cookie);
		}
		else
		{
			//清空cookie的已有的用户名和密码
			  Cookie[] cookies= request.getCookies();
			     if(cookies!=null)
			    	 for(Cookie cookie:cookies)
			    	 {
			    		if("COOKIE_username".equals(cookie.getName())||"COOKIE_password".equals(cookie.getName()))
			    		{
			    			 cookie.setMaxAge(0);//清空
			    			 cookie.setPath("/");
			    			 response.addCookie(cookie);
			    		}

			    	 }
		}
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
    	response.setContentType("text/html;charset=UTF-8");//设置浏览器端的编码

		PrintWriter out=response.getWriter();//定义写入html代码的对象
		//获取参数
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String rememberMe=request.getParameter("rememberMe");
		User user=new User(username,password);
		int count=userdao.login(user);//将页面获取内容与数据库相匹配
		if(count>0)
		{
			request.getSession().setAttribute("SESSION_user", user);//用户登录成功存储到session
			rememberMe(rememberMe,username,password, request,response);//记住密码
			List<User> list=userdao.findUser();//将数据库中的信息存储list
			request.getSession().setAttribute("userList", list);//用户登录成功存储到session
			//request.setAttribute("userList", list);
			//如果用户为TLC就为超级管理员
			if("TangLingChi".equals(username))
			request.getRequestDispatcher("Clerk.jsp").forward(request, response);
			else
				request.getRequestDispatcher("customer.jsp").forward(request, response);
			//request.getRequestDispatcher("index.jsp").forward(request, response);
			//success
		}
		else
		{
			out.println("<script  type='text/javascript'>");
			 out.println("alert('你的密码和用户错误');");
			 out.println("window.location='Login.jsp';");
			 out.println("</script>");
		}
	}
}
