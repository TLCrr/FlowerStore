package TLC.servlet;

import TLC.dao.OrderDao;
import TLC.dao.impl.OrderDaoimpl;
import TLC.pojo.Order;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns="/OrderServlet")
public class OrderServlet extends HttpServlet {
    OrderDao orderdao=new OrderDaoimpl();//实现功能的对象
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String method=request.getParameter("method");
        String test=request.getParameter("test");
        if("show".equals(method)){
            show(request,response);
        }
        else if("delete".equals(method))
        {
            delete(request,response);
        }
        else
            add(request,response,test);
    }
    private void show(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {
        List<Order> list1=orderdao.findOrder();
        request.getSession().setAttribute("orderList", list1);
        request.getRequestDispatcher("order.jsp").forward(request, response);
    }
    private void delete(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {
        int order_id=Integer.parseInt(request.getParameter("order_id"));
        int count=orderdao.deleteOrder(order_id);
        if(count>0){
            List<Order> list1=orderdao.findOrder();
            request.getSession().setAttribute("orderList", list1);
        }
        request.getRequestDispatcher("order.jsp").forward(request, response);
    }
    //添加用户
    private void add(HttpServletRequest request, HttpServletResponse response, String test)  throws ServletException, IOException {
        String cus_name=request.getParameter("cus_name");
        String cus_sex=request.getParameter("cus_sex");
        String cus_phone=request.getParameter("cus_phone");
        String cus_wechat=request.getParameter("cus_wechat");
        String cus_address=request.getParameter("cus_address");
        String cus_ordertime=request.getParameter("cus_ordertime");
        String remark=request.getParameter("remark");
        Order order =new Order(cus_name,cus_sex,cus_phone,cus_wechat,cus_address,cus_ordertime,remark);
        int count= orderdao.addOrder(order);
        if(count>0)
        {
            List<Order> list1=orderdao.findOrder();
            request.getSession().setAttribute("orderList", list1);
        }
        if("clert".equals(test))
            request.getRequestDispatcher("order.jsp").forward(request, response);
        else
            request.getRequestDispatcher("order_success.jsp").forward(request, response);
    }
}
