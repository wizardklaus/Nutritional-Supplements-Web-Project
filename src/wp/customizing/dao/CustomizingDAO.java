package wp.customizing.dao;

import java.sql.SQLException;
import java.util.List;

import wp.customizing.dto.CustomizingPDTO;
import wp.customizing.dto.IngdDTO;

public interface CustomizingDAO {
	
	/**
	 * insertShop 레코드 삽입
	 * @return : 1이상 -삽입성공 , 0 - 삽입실패
	 * */
	  int insertShop(CustomizingPDTO dto) throws SQLException;

	/**
	 * insertCart 레코드 삽입
	 * @return : 1이상 -삽입성공 , 0 - 삽입실패
	 * */
	  int insertCart(CustomizingPDTO dto) throws SQLException;
	  
	  /**
		 * select IngdTable All
		 * @return : 모든 레코드를 리스트로 반환
		 * */
	  List<IngdDTO> selectIngdAll() throws SQLException;
	  
	  
	  /**
		 * select ProductTable All
		 * @return : 모든 레코드를 리스트(스트링)로 반환
		 * */
	  List<List<String>> selectProductAll() throws SQLException;
	  
	  
	  /**
		 * select ProductTable Where
		 * @return : 조건에 해당하는 레코드를 리스트(스트링)로 반환
		 * */
	  List<IngdDTO> selectIngdWhere(String key) throws SQLException;
	 
}
