package wp.category.util;
/**
 * JDBC�� ���� �ε�, ����, �ݱ�
 * */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DbUtil {
   /**
    * �ε�
    * */
	static{
		try{
			Class.forName(DbProperty.DRIVER_NAME);
		}catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
   /**
    * ����
    * */
	public static Connection getConnection()throws SQLException{
		return DriverManager.getConnection(DbProperty.URL,DbProperty.USER_ID, DbProperty.USER_PWD);
	}
	
   /**
    * �ݱ�
    * */
	public static void dbClose(Connection con , Statement st ){
		try{
		 if(st!=null)st.close();
		 if(con!=null)con.close();
		}catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void dbClose(Connection con, Statement st, ResultSet rs){
		try{
		 if(rs!=null)rs.close();
		 if(st!=null)st.close();
		 if(con!=null)con.close();
		}catch (SQLException e) {
			e.printStackTrace();
		}
	}
}











