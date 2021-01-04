package TLC.servlet;

import TLC.dao.FlowerDao;
import TLC.dao.UserDao;
import TLC.dao.impl.FlowerDaoimpl;
import TLC.dao.impl.Shopping_cartimpl;
import TLC.dao.impl.UserDaoimpl;
import TLC.pojo.CartList;
import TLC.pojo.Flower;
import TLC.pojo.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(urlPatterns="/DeleteShopping_cartServlet")
public class DeleteShopping_cartServlet extends HttpServlet{
    Shopping_cartimpl Shopping_cartSdao=new Shopping_cartimpl();//实现功能的对象
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doPost(request, response);
        }
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");
            String method=request.getParameter("method");
            if("deleteshopping_cart".equals(method)){
                delete(request,response);

        }

        }
    private void delete(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {

            int shoping_id=Integer.parseInt(request.getParameter("shoping_id"));
        int count=Shopping_cartSdao.deleteshopping_cart(shoping_id);
        if(count>0){
//            String shopping=request.getParameter("shopping");
//            request.getRequestDispatcher("shopping_cart.jsp").forward(request, response);
            FlowerDao dao=new FlowerDaoimpl();
            String username=request.getParameter("username");
            List<CartList> list=dao.Findflowerbyusername(username);
            request.getSession().setAttribute("cartList", list);

            PrintWriter writer = response.getWriter();
            writer.write("<script>");
            writer.write("window.location.href='shopping_cart.jsp'");
            writer.write("</script>");
            writer.flush();
            writer.close();

        }else{
            FlowerDao dao=new FlowerDaoimpl();
            String username=request.getParameter("username");
            List<CartList> list=dao.Findflowerbyusername(username);
            request.getSession().setAttribute("cartList", list);
            PrintWriter writer = response.getWriter();
            writer.write("<script>");
//            writer.write(" alert('删除失败！');");
            writer.write("window.location.href='shopping_cart.jsp'");
            writer.write("</script>");
            writer.flush();
            writer.close();
        }

    }

    }
