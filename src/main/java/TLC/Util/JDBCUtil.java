package TLC.Util;

import com.mysql.jdbc.Connection;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JDBCUtil {
	public static final String DRIVER="com.mysql.jdbc.Driver";
	public static final String URL="jdbc:mysql://localhost:3306/florist?serverTimezone=UTC&useUnicode=true&characterEncoding=UTF-8";
	public static final String USER="root";
	public static final String PWD="1234";

//数据库连接
	public static Connection getConn(){
		Connection conn=null;
		try {
			Class.forName(DRIVER);
			conn=(Connection) DriverManager.getConnection(URL,USER,PWD);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
	public static void closeAll(java.sql.Connection conn,ResultSet rs,java.sql.PreparedStatement pstmt,java.sql.Statement stmt){
		try {
			if(rs!=null){
				rs.close();
			}
			if(pstmt!=null){
				pstmt.close();
			}
			if(stmt!=null){
				stmt.close();
			}
			if(conn!=null){
				conn.close();
			}			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
