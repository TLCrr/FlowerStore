package TLC.servlet;

import TLC.dao.FlowerDao;
import TLC.dao.impl.FlowerDaoimpl;
import TLC.pojo.CartList;
import TLC.pojo.Flower;
import TLC.pojo.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns="/FlowerServlet")
public class FlowerServlet extends HttpServlet {
    FlowerDao flowerdao=new FlowerDaoimpl();//实现功能的对象
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String method=request.getParameter("method");
        //String actionCode=request.getParameter("actionCode");//接收actionCode的值，并赋给jspServlet中的actionCode变量，此时变量值为user
        if("show".equals(method)){
            show(request,response);
        }
        else if("add".equals(method))//添加到购物车
        {
            add(request,response);
        }
        else if("show1".equals(method))
        {
            show1(request,response);
        }
        else if("delete".equals(method))
        {
            delete(request,response);
        }
        else if ("showcart".equals(method))
        {
            showcart(request,response);
        }else if ("modify".equals(method))
        {
            updateflower(request,response);
        }
        else
        {
            addflowers(request,response);
        }
    }
    private void addflowers(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("textml;charset=UTF-8");
        String flower_price = null;
        String flower_name = null;
        String flower_date = null;
        String flower_picture = null;
        flower_picture = request.getParameter("fileupload");
        flower_name = request.getParameter("flower_name");
        flower_price = request.getParameter("flower_price");
        flower_date = request.getParameter("flower_date");
        int flower_prices = Integer.parseInt(flower_price);
        Flower flower = new Flower("images/"+flower_picture, flower_name, flower_prices, flower_date);
        int count = flowerdao.addflower(flower);
        if (count > 0) {
            List<Flower> list1 = flowerdao.showflower();
            request.getSession().setAttribute("flowerList", list1);
           // session对象赋值和得到对象属性的值
        }
        request.getRequestDispatcher("flower1.jsp").forward(request, response);
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int flower_id=Integer.parseInt(request.getParameter("flower_id"));
        int count=flowerdao.deleteflower(flower_id);
        if(count>0){
            List<Flower> list=flowerdao.showflower();
            request.getSession().setAttribute("flowerList", list);
        }
        request.getRequestDispatcher("flower1.jsp").forward(request, response);
    }

    private void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int flower_id=Integer.parseInt(request.getParameter("flower_id"));//鲜花ID
        String username=request.getParameter("username");//当前用户的用户名
        Flower flower=flowerdao.Findflower(flower_id);//先根据鲜花ID找到鲜花的名字和价格
        int count=flowerdao.addcart(flower,username);//将鲜花名、价格还有用户名加入购物车的表中
        /*if(count>0)
        {
            List<Flower> list=flowerdao.Findflowerbyusername(username);
            request.getSession().setAttribute("cartList", list);
        }*/
        request.getSession().setAttribute("sum",new FlowerDaoimpl().getSum());
      //  request.getRequestDispatcher("shopping_cart.jsp").forward(request, response);
        showcart(request,response);
    }
    private void show(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {
        List<Flower> list1=flowerdao.showflower();
        request.getSession().setAttribute("flowerList", list1);//show中的list存储到flowerlist中
        request.getRequestDispatcher("flower.jsp").forward(request, response);//方法传入jsp不改变界面
    }
    private void updateflower(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {
        String flower_name1=request.getParameter("flower_name");
        //String flower_picture1=request.getParameter("flower_picture1");
        int flower_price1=Integer.parseInt(request.getParameter("flower_price"));
//        int flower_price1=request.getParameter(flower_price1);
        String flower_date1=request.getParameter("flower_date");
       //List<Flower> list=
        int count= flowerdao.updateflower(flower_name1,flower_price1,flower_date1);
        if(count>0)
        {

            show(request,response);
        }

    }
//        request.getSession().setAttribute("flowerList", list1);
//        request.getRequestDispatcher("flowerupdate.jsp").forward(request, response);//方法传入jsp不改变界面
//    }
    private void show1(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {
        List<Flower> list1=flowerdao.showflower();
        request.getSession().setAttribute("flowerList", list1);
        request.getRequestDispatcher("flower1.jsp").forward(request, response);
    }
    private void showcart(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {
        String username=request.getParameter("username");
        List<CartList> list=flowerdao.Findflowerbyusername(username);
        request.getSession().setAttribute("cartList", list);
        request.getRequestDispatcher("shopping_cart.jsp").forward(request, response);
    }
}
