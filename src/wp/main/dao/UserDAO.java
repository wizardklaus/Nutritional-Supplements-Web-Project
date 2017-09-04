package wp.main.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import wp.main.model.dto.UserDTO;
import wp.main.util.DbUtil;

public class UserDAO {

	
	//select
	public List<UserDTO> selectUser(String id, String pwd) throws SQLException{
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<UserDTO> list = new ArrayList<>();
		try{
			con = DbUtil.getConnection();
			ps = con.prepareStatement("select * from usertable where user_id = ? and upwd = ?");
			ps.setString(1, id);
			ps.setString(2, pwd);
			rs = ps.executeQuery();
			while(rs.next()){
				String uid = rs.getString("user_id");
				String upwd = rs.getString("upwd");
				String uname = rs.getString("uname");
				String ubirth = rs.getString("ubirth");
				String uaddr = rs.getString("uaddr");
				String umobile = rs.getString("umobile");
				String ugender = rs.getString("ugender");
				String effect1 = rs.getString("effect1");
				String effect2 = rs.getString("effect2");
				String effect3 = rs.getString("effect3");
				
				list.add(new UserDTO(uid, upwd, uname, ubirth, uaddr, umobile, ugender, effect1, effect2, effect3));
			}
		}finally{
			DbUtil.dbClose(con, ps, rs);
		}
		return list;
	}
	
	//insert
	public int insertUser(UserDTO userdto) throws SQLException{
		
		Connection con = null;
		PreparedStatement ps = null;
		int result = 0;
		try{
			con = DbUtil.getConnection();
			ps = con.prepareStatement("insert into usertable values(?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, userdto.getUser_id());
			ps.setString(2, userdto.getUpwd());
			ps.setString(3, userdto.getUname());
			ps.setString(4, userdto.getUbirth());
			ps.setString(5, userdto.getUaddr());
			ps.setString(6, userdto.getUmobile());
			ps.setString(7, userdto.getUgender());
			ps.setString(8, userdto.getEffect1());
			ps.setString(9, userdto.getEffect2());
			ps.setString(10, userdto.getEffect3());
			result = ps.executeUpdate();
		}finally{
			DbUtil.dbClose(con, ps);
		}
		return result;
	}
	//update
	
	//delete
	
}
