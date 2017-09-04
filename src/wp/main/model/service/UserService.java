package wp.main.model.service;

import java.sql.SQLException;
import java.util.List;

import wp.main.dao.UserDAO;
import wp.main.model.dto.UserDTO;

public class UserService {
	
	UserDAO userdao = new UserDAO();
	
	public List<UserDTO> selectUser(String id, String pwd) throws SQLException{
		List<UserDTO> list = userdao.selectUser(id, pwd);
		return list;
	} 
	
	public int insertUser(UserDTO userdto) throws SQLException{
		int result = userdao.insertUser(userdto);
		return result;
	}
}
