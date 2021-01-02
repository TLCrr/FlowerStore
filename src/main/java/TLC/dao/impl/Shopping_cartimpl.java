package TLC.dao.impl;

import TLC.Util.JDBCUtil;

import java.sql.*;

public class Shopping_cartimpl {
    int count=-1;
    Connection conn=null;//数据库连接对象
    PreparedStatement pstmt=null;//预编译
    Statement stmt=null;
    ResultSet rs=null;//返回结果集
    public int deleteshopping_cart(int shopping_id)
    {
        int count=-1;
        String sql="delete from shopping_cart where shopping_id=?";
        conn= JDBCUtil.getConn();
        try {
            pstmt=conn.prepareStatement(sql);
            pstmt.setInt(1, shopping_id);
            count=pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            JDBCUtil.closeAll(conn, rs, pstmt, pstmt);
        }
        return count;
    }


}
