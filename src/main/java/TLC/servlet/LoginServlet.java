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
	UserDao userdao=new UserDaoimpl();//ʵ�ֹ��ܵĶ���
    public LoginServlet() { super();}
    protected void rememberMe(String rememberMe,
			String username,
			String password,
			HttpServletRequest request,
			HttpServletResponse response)throws ServletException, IOException

    {
		 //��������
		if("true".equals(rememberMe))
		{
			//��ס�û���������
			Cookie cookie=new Cookie("COOKIE_username",username);
		    cookie.setPath("/");//�κ�ҳ�涼�ܷ��ʵ�cookie
			cookie.setMaxAge(365*24*60*60);//ʹ��ʱ��
			response.addCookie(cookie);
			cookie=new Cookie("COOKIE_password",password);
		    cookie.setPath("/");
			cookie.setMaxAge(365*24*60*60);
			response.addCookie(cookie);
		}
		else
		{
			//���cookie�����е��û���������
			  Cookie[] cookies= request.getCookies();
			     if(cookies!=null)
			    	 for(Cookie cookie:cookies)
			    	 {
			    		if("COOKIE_username".equals(cookie.getName())||"COOKIE_password".equals(cookie.getName()))
			    		{
			    			 cookie.setMaxAge(0);//���
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
    	response.setContentType("text/html;charset=UTF-8");//����������˵ı���

		PrintWriter out=response.getWriter();//����д��html����Ķ���
		//��ȡ����
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String rememberMe=request.getParameter("rememberMe");
		User user=new User(username,password);
		int count=userdao.login(user);//��ҳ���ȡ���������ݿ���ƥ��
		if(count>0)
		{
			request.getSession().setAttribute("SESSION_user", user);//�û���¼�ɹ��洢��session
			rememberMe(rememberMe,username,password, request,response);//��ס����
			List<User> list=userdao.findUser();//�����ݿ��е���Ϣ�洢list
			request.getSession().setAttribute("userList", list);//�û���¼�ɹ��洢��session
			//request.setAttribute("userList", list);
			//����û�ΪTLC��Ϊ��������Ա
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
			 out.println("alert('���������û�����');");
			 out.println("window.location='Login.jsp';");
			 out.println("</script>");
		}
	}
}
