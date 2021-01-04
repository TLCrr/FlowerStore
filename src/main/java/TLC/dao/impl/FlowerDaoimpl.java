package TLC.dao.impl;

import TLC.Util.JDBCUtil;
import TLC.dao.FlowerDao;
import TLC.pojo.CartList;
import TLC.pojo.Flower;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class FlowerDaoimpl implements FlowerDao {
    int count=-1;
    public static int sum;
    Connection conn=null;//数据库连接对象
    PreparedStatement pstmt=null;//预编译
    Statement stmt=null;
    ResultSet rs=null;//返回结果集

    public static int getSum() {
        return sum;
    }

    public static void setSum(int sum) {
        FlowerDaoimpl.sum = sum;
    }


    public List<Flower> showflower() {
        List<Flower> list1=new ArrayList<Flower>();
        String sql="select flower_id,flower_picture,flower_name,flower_price,flower_date from flowers";
        conn= JDBCUtil.getConn();//获得连接对象
        try {
            pstmt=conn.prepareStatement(sql);//创建执行命令对象
            rs=pstmt.executeQuery();//检索
            while(rs.next())
            {
                Flower flower=new Flower(rs.getInt("flower_id"),
                        rs.getString("flower_picture"),
                        rs.getString("flower_name"),
                        rs.getInt("flower_price"),
                        rs.getString("flower_date"));
                list1.add(flower);//将值存到集合里面
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally//无论怎样都要关闭数据库
        {
            JDBCUtil.closeAll(conn, rs, pstmt, stmt);
        }
        return list1;

    }


    public int deleteflower(int flower_id) {
        String sql="delete from flowers where flower_id=?";
        conn=JDBCUtil.getConn();
        try {
            pstmt=conn.prepareStatement(sql);
            pstmt.setInt(1, flower_id);
            count=pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            JDBCUtil.closeAll(conn, rs, pstmt, pstmt);
        }
        return count;
    }


    public int addflower(Flower flower) {
        String sql="insert into flower.getFlower_picture(),flower.getFlower_name(),flower.getFlower_price(), flower.getFlower_date() values(?,?,?,?)";
        conn=JDBCUtil.getConn();//获取连接对象
        try {
            pstmt=conn.prepareStatement(sql);//
            pstmt.setString(1, flower.getFlower_picture());
            pstmt.setString(2, flower.getFlower_name());
            pstmt.setInt(3, flower.getFlower_price());
            pstmt.setString(4, flower.getFlower_date());
            count=pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            JDBCUtil.closeAll(conn, rs, pstmt, pstmt);
        }
        return count;
    }

    public int updateflower(String flower_name1,int flower_price1,String flower_date1) {
        int count=-1;
        String sql="update flowers set flower_price=?,flower_date=? where flower_name=?";
        conn= JDBCUtil.getConn();
        try {
            pstmt=conn.prepareStatement(sql);
//            pstmt.setInt(1, flower_id1);
//            pstmt.setString(1, flower_picture1);
//            pstmt.setString(2, flower_name1);
            pstmt.setInt(1, flower_price1);
            pstmt.setString(2, flower_date1);
            pstmt.setString(3, flower_name1);
            count=pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            JDBCUtil.closeAll(conn, rs, pstmt, pstmt);
        }
        return count;
    }
    public Flower Findflower(int flower_id) {
        Flower flower = new Flower();
        String sql="select flower_name,flower_price from flowers where flower_id=?";
        conn= JDBCUtil.getConn();
        try {
            pstmt=conn.prepareStatement(sql);
            pstmt.setInt(1, flower_id);
            rs=pstmt.executeQuery();
            while(rs.next()){
               flower.setFlower_name(rs.getString(1));
               flower.setFlower_price(rs.getInt(2));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            JDBCUtil.closeAll(conn, rs, pstmt, pstmt);
        }
        return flower;
    }




    public List<CartList> Findflowerbyusername(String username) {
        sum=0;
        List<CartList> list=new ArrayList<CartList>();
        String sql="select shopping_id,flower_name,flower_price from shopping_cart where username=?";
        conn=JDBCUtil.getConn();
        try {
            pstmt=conn.prepareStatement(sql);
            pstmt.setString(1, username);
            rs=pstmt.executeQuery();
            while(rs.next()){
                CartList cartList= new CartList(rs.getInt("shopping_id"),rs.getString("flower_name"),
                        rs.getInt("flower_price"));
                sum+=cartList.getFlower_price();
                list.add(cartList);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            JDBCUtil.closeAll(conn, rs, pstmt, pstmt);
        }
        return list;
    }

    public int addcart(Flower flower,String username) {

      String sql="insert into shopping_cart(flower_name,flower_price,username) values(?,?,?)";
        conn=JDBCUtil.getConn();//获取连接对象
        try {
            pstmt=conn.prepareStatement(sql);//
            pstmt.setString(1, flower.getFlower_name());//
            pstmt.setInt(2, flower.getFlower_price());//
            pstmt.setString(3, username);//?
            //count+=flower.getFlower_price();
            count=pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            JDBCUtil.closeAll(conn, rs, pstmt, pstmt);
        }
        return count;
    }
    public List<Flower> showcart() {
        List<Flower> list1=new ArrayList<Flower>();
//        List<Integer> list2=new ArrayList<Integer>();
        String sql="select flower_name,flower_price from shopping_cart";
        conn= JDBCUtil.getConn();//获得连接对象
        Flower flower;
        try {
            pstmt=conn.prepareStatement(sql);//创建执行命令对象
            rs=pstmt.executeQuery();//检索
            while(rs.next())
            {
                flower=new Flower(rs.getString("flower_name"),rs.getInt("flower_price"));
                list1.add(flower);//将值存到集合里面
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally//无论怎样都要关闭数据库
        {
            JDBCUtil.closeAll(conn, rs, pstmt, stmt);
        }
        return list1;
    }

}
