package TLC.dao.impl;
import TLC.Util.JDBCUtil;
import TLC.dao.OrderDao;
import TLC.pojo.Order;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class OrderDaoimpl implements OrderDao {
    int count=-1;
    Connection conn=null;//数据库连接对象
    PreparedStatement pstmt=null;//预编译
    Statement stmt=null;//?
    ResultSet rs=null;//返回结果集

    public List<Order> findOrder() {
        List<Order> list1=new ArrayList<Order>();
        String sql="select order_id,cus_name,cus_sex,cus_phone,cus_wechat,cus_address,cus_ordertime,remark from orders";
        conn= JDBCUtil.getConn();//获得连接对象
        try {
            pstmt=conn.prepareStatement(sql);//创建执行命令对象
            rs=pstmt.executeQuery();//检索
            while(rs.next())
            {
                Order order=new Order(rs.getInt("order_id"),
                                        rs.getString("cus_name"),
                                        rs.getString("cus_sex"),
                                        rs.getString("cus_phone"),
                                        rs.getString("cus_wechat"),
                                        rs.getString("cus_address"),
                                        rs.getString("cus_ordertime"),
                                        rs.getString("remark"));
                list1.add(order);//将值存到集合里面
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally//无论怎样都要关闭数据库
        {
            JDBCUtil.closeAll(conn, rs, pstmt, stmt);
        }
        return list1;
    }


    public int deleteOrder(int order_id) {
        int count=-1;
        String sql="delete from orders where order_id=?";
        conn= JDBCUtil.getConn();
        try {
            pstmt=conn.prepareStatement(sql);
            pstmt.setInt(1, order_id);
            count=pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            JDBCUtil.closeAll(conn, rs, pstmt, pstmt);
        }
        return count;
    }


    public int addOrder(Order order) {
        String sql="insert into orders(cus_name,cus_sex,cus_phone,cus_wechat,cus_address,cus_ordertime,remark) values(?,?,?,?,?,?,?)";
        conn= JDBCUtil.getConn();//获取连接对象
        try {
            pstmt=conn.prepareStatement(sql);//
            pstmt.setString(1, order.getCus_name());
            pstmt.setString(2, order.getCus_sex());
            pstmt.setString(3, order.getCus_phone());
            pstmt.setString(4, order.getCus_wechat());
            pstmt.setString(5, order.getCus_address());
            pstmt.setString(6, order.getCus_ordertime());
            pstmt.setString(7, order.getRemark());
            count=pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            JDBCUtil.closeAll(conn, rs, pstmt, pstmt);
        }
        return count;
    }
}
