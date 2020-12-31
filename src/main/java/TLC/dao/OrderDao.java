package TLC.dao;

import TLC.pojo.Order;

import java.util.List;

public interface OrderDao {
    public List<Order> findOrder();//显示所有订单信息
    public int deleteOrder(int order_id);//根据订单ID删除订单信息
    public int addOrder(Order order);//添加订单信息
}
