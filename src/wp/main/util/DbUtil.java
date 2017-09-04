package wp.main.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * JDBC�� ���� �ε�, ����, �ݱ�
 */
public class DbUtil {
	/**
	 * �ε�
	 */
	static {
		try {
			Class.forName(DBProperty.DRIVER_NAME);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * ���� ȣ��� ���ϰ� static ����
	 */
	public static Connection getConnection() throws SQLException {
		return DriverManager.getConnection(DBProperty.URL, DBProperty.USER_ID, DBProperty.USER_PWD);
	}

	/**
	 * �ݱ�
	 * PreparedStatement�� Statement�� ��ӹ޾ұ� ������ ����������
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
	 * �ݱ� - �����ε���!
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
