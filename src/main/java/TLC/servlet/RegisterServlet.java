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

@WebServlet(urlPatterns="/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;//Java的序列化机制是通过判断类的serialVersionUID来验证版本一致性的
	UserDao userDao = new UserDaoimpl();
    public RegisterServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");//设置服务器端的编码
		response.setCharacterEncoding("UTF-8");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		User user = new User(username,password);
		int count= userDao.register(user);
		if(count>0)
		{
			request.getRequestDispatcher("Login.jsp").forward(request, response);//请求转发，forward将请求转发给其他资源
		}
		else
		{
			request.getRequestDispatcher("Register.jsp").forward(request, response);
		}
	}

}
