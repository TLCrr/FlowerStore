package TLC.dao.impl;

import TLC.Util.JDBCUtil;
import TLC.dao.UserDao;
import TLC.pojo.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDaoimpl implements UserDao {
	int count=-1;
	Connection conn=null;//数据库连接对象
	PreparedStatement pstmt=null;//预编译
	Statement stmt=null;
	ResultSet rs=null;//返回结果集
	public int register(User user) {
		String sql="insert into login(username,password) values(?,?)";
		conn= JDBCUtil.getConn();//获取连接对象
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, user.getUsername());
			pstmt.setString(2, user.getPassword());
			count=pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally//关闭数据库连接
		{
			JDBCUtil.closeAll(conn, rs, pstmt, stmt);
		}
		return count;
	}
	public int login(User user) {
		String sql="select count(1) as cnum from login where username=? and password=?";
		conn= JDBCUtil.getConn();
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, user.getUsername());
			pstmt.setString(2, user.getPassword());
			rs=pstmt.executeQuery();
			if(rs.next())
			{
				count=rs.getInt("cnum");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally
		{
			JDBCUtil.closeAll(conn, rs, pstmt, stmt);
		}
		return count;
	}
	public List<User> findUser() {
		List<User> list=new ArrayList<User>();
		String sql="select uid,username,password from login";
		conn= JDBCUtil.getConn();//获得连接对象
		try {
			pstmt=conn.prepareStatement(sql);//创建执行命令对象
			rs=pstmt.executeQuery();//检索
			while(rs.next())
			{
				User user=new User(rs.getInt("uid"),rs.getString("username"),rs.getString("password"));
				list.add(user);//将值存到集合里面
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally//无论怎样都要关闭数据库
		{
			JDBCUtil.closeAll(conn, rs, pstmt, stmt);
		}
		return list;
	}

//	public int findUserName(String username) {
////		count=0;
////		String sql="select * from login where username=?";
////		conn=JDBCUtil.getConn();//获得连接对象
////		try {
////			pstmt=conn.prepareStatement(sql);//创建执行命令对象
////			rs=pstmt.executeQuery();//检索
////			while(rs.next())
////			{
////				count++;
////			}
////		} catch (SQLException e) {
////			e.printStackTrace();
////		}finally//无论怎样都要关闭数据库
////		{
////			JDBCUtil.closeAll(conn, rs, pstmt, stmt);
////		}
////		return count;
//
//		int count=0;
//		String sql="select * from login where username=?";
//		conn= JDBCUtil.getConn();
//		try {
//			pstmt=conn.prepareStatement(sql);
//			pstmt.setString(1, username);
//			rs=pstmt.executeQuery();
//			if(rs.next())
//			{
//			count=1;
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}finally
//		{
//			JDBCUtil.closeAll(conn, rs, pstmt, stmt);
//		}
//		return count;
//
//	}


	public int deleteUser(int uid)
	{
		int count=-1;
		String sql="delete from login where uid=?";
		conn= JDBCUtil.getConn();
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, uid);
			count=pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			JDBCUtil.closeAll(conn, rs, pstmt, pstmt);
		}
		return count;
	}


	public int addUser(User user) {
		//String sql="insert into login(username,password) values(?,?)";
		String sql="insert into login(username,password) values(?,?)";
		conn= JDBCUtil.getConn();//获取连接对象
		try {
			pstmt=conn.prepareStatement(sql);//
			pstmt.setString(1, user.getUsername());//??????????
			pstmt.setString(2, user.getPassword());//??????????
			count=pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			JDBCUtil.closeAll(conn, rs, pstmt, pstmt);
		}
		return count;
	}


    public User showUserByUsername(String username) {
        User user= null;
        String sql="select username,password from login where username=?";
        conn= JDBCUtil.getConn();
        try {
            pstmt=conn.prepareStatement(sql);
            pstmt.setString(1, username);
            rs=pstmt.executeQuery();
            if(rs.next()){
                user = new User(rs.getString("username"),
                                rs.getString("password"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            JDBCUtil.closeAll(conn, rs, pstmt, pstmt);
        }
        return user;
    }


    public int update_password(String password1,String password,String username) {
		int count=-1;
		String sql="update login set password=? where username=?";
		conn= JDBCUtil.getConn();
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, password1);
			//pstmt.setString(2, password);
			pstmt.setString(2, username);
			count=pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			JDBCUtil.closeAll(conn, rs, pstmt, pstmt);
		}
		return count;
    }

}

