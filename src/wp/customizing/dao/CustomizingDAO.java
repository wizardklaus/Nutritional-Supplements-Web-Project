package wp.customizing.dao;

import java.sql.SQLException;
import java.util.List;

import wp.customizing.dto.CustomizingPDTO;
import wp.customizing.dto.IngdDTO;

public interface CustomizingDAO {
	
	/**
	 * insertShop ���ڵ� ����
	 * @return : 1�̻� -���Լ��� , 0 - ���Խ���
	 * */
	  int insertShop(CustomizingPDTO dto) throws SQLException;

	/**
	 * insertCart ���ڵ� ����
	 * @return : 1�̻� -���Լ��� , 0 - ���Խ���
	 * */
	  int insertCart(CustomizingPDTO dto) throws SQLException;
	  
	  /**
		 * select IngdTable All
		 * @return : ��� ���ڵ带 ����Ʈ�� ��ȯ
		 * */
	  List<IngdDTO> selectIngdAll() throws SQLException;
	  
	  
	  /**
		 * select ProductTable All
		 * @return : ��� ���ڵ带 ����Ʈ(��Ʈ��)�� ��ȯ
		 * */
	  List<List<String>> selectProductAll() throws SQLException;
	  
	  
	  /**
		 * select ProductTable Where
		 * @return : ���ǿ� �ش��ϴ� ���ڵ带 ����Ʈ(��Ʈ��)�� ��ȯ
		 * */
	  List<IngdDTO> selectIngdWhere(String key) throws SQLException;
	 
}
