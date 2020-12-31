package TLC.dao.impl;

import TLC.Util.JDBCUtil;
import TLC.dao.UserDao;
import TLC.pojo.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDaoimpl implements UserDao {
	int count=-1;
	Connection conn=null;//���ݿ����Ӷ���
	PreparedStatement pstmt=null;//Ԥ����
	Statement stmt=null;
	ResultSet rs=null;//���ؽ����
	public int register(User user) {
		String sql="insert into login(username,password) values(?,?)";
		conn= JDBCUtil.getConn();//��ȡ���Ӷ���
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, user.getUsername());
			pstmt.setString(2, user.getPassword());
			count=pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally//�ر����ݿ�����
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
		conn= JDBCUtil.getConn();//������Ӷ���
		try {
			pstmt=conn.prepareStatement(sql);//����ִ���������
			rs=pstmt.executeQuery();//����
			while(rs.next())
			{
				User user=new User(rs.getInt("uid"),rs.getString("username"),rs.getString("password"));
				list.add(user);//��ֵ�浽��������
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally//����������Ҫ�ر����ݿ�
		{
			JDBCUtil.closeAll(conn, rs, pstmt, stmt);
		}
		return list;
	}

//	public int findUserName(String username) {
////		count=0;
////		String sql="select * from login where username=?";
////		conn=JDBCUtil.getConn();//������Ӷ���
////		try {
////			pstmt=conn.prepareStatement(sql);//����ִ���������
////			rs=pstmt.executeQuery();//����
////			while(rs.next())
////			{
////				count++;
////			}
////		} catch (SQLException e) {
////			e.printStackTrace();
////		}finally//����������Ҫ�ر����ݿ�
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
		conn= JDBCUtil.getConn();//��ȡ���Ӷ���
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

