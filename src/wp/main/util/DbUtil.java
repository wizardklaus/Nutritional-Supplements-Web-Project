package wp.main.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * JDBC를 위한 로드, 연결, 닫기
 */
public class DbUtil {
	/**
	 * 로드
	 */
	static {
		try {
			Class.forName(DBProperty.DRIVER_NAME);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 연결 호출시 편하게 static 붙임
	 */
	public static Connection getConnection() throws SQLException {
		return DriverManager.getConnection(DBProperty.URL, DBProperty.USER_ID, DBProperty.USER_PWD);
	}

	/**
	 * 닫기
	 * PreparedStatement는 Statement를 상속받았기 때문에 다형성적용
	 * */
	public static void dbClose(Connection con, Statement st){
		try{
			if(st != null)	st.close();
			if(con != null)	con.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
	}
	
	/**
	 * 닫기 - 오버로딩함!
	 * */
	public static void dbClose(Connection con, Statement st, ResultSet rs){
		try{
			if(rs!=null)	rs.close();
			if(st != null)	st.close();
			if(con != null)	con.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
	}

	
}
