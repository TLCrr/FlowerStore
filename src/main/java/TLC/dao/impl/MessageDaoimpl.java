package TLC.dao.impl;

import TLC.Util.JDBCUtil;
import TLC.dao.MessageDao;
import TLC.pojo.Message;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MessageDaoimpl implements MessageDao {
    int count=-1;
    Connection conn=null;//数据库连接对象
    PreparedStatement pstmt=null;//预编译
    Statement stmt=null;//?
    ResultSet rs=null;//返回结果集

    public List<Message> findMessage() {
        List<Message> list2=new ArrayList<Message>();
        String sql="select message_id,cus_username,content from Messages";
        conn= JDBCUtil.getConn();//获得连接对象
        try {
            pstmt=conn.prepareStatement(sql);//创建执行命令对象
            rs=pstmt.executeQuery();//检索
            while(rs.next())
            {
                Message message=new Message(rs.getInt("message_id"),rs.getString("cus_username"),rs.getString("content"));
                list2.add(message);//将值存到集合里面
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally//无论怎样都要关闭数据库
        {
            JDBCUtil.closeAll(conn, rs, pstmt, stmt);
        }
        return list2;
    }


    public int addMessage(Message message) {
        String sql="insert into messages(cus_username,content) values(?,?)";
        conn= JDBCUtil.getConn();//获取连接对象
        try {
            pstmt=conn.prepareStatement(sql);
            pstmt.setString(1, message.getCus_username());
            pstmt.setString(2, message.getContent());
            count=pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            JDBCUtil.closeAll(conn, rs, pstmt, pstmt);
        }
        return count;
    }
}
