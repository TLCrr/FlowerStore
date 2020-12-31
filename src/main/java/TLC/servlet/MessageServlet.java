package TLC.servlet;

import TLC.dao.MessageDao;
import TLC.dao.impl.MessageDaoimpl;
import TLC.pojo.Message;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns="/MessageServlet")
public class MessageServlet extends HttpServlet {
    MessageDao messagedao=new MessageDaoimpl();//实现功能的对象
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String method=request.getParameter("method");
        if("show".equals(method)){
            show(request,response);
        }
        else
            add(request,response);
    }
    private void show(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {
        List<Message> list2=messagedao.findMessage();
        request.getSession().setAttribute("messageList", list2);
        request.getRequestDispatcher("message.jsp").forward(request, response);
    }
    private void add(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {
        String cus_username=request.getParameter("cus_username");
        String content=request.getParameter("content");
        Message message = new Message(cus_username,content);
        int count= messagedao.addMessage(message);
        if(count>0)
        {
            List<Message> list=messagedao.findMessage();
            request.getSession().setAttribute("messageList", list);
        }
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}
