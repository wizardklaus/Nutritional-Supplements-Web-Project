package wp.customizing.service;

import java.sql.SQLException;
import java.util.List;

import wp.customizing.dao.CustomizingDAOImpl;
import wp.customizing.dto.CustomizingPDTO;
import wp.customizing.dto.IngdDTO;

public class CustomizingService {

private static CustomizingDAOImpl dao = new CustomizingDAOImpl();
	
	/**
	 * CustomizingDAOImpl의 insertCart 메소드 호출
	 * */
	public static int insertCart(CustomizingPDTO dto) throws SQLException{
		System.out.println("장바구니 담기 다오");
		  return dao.insertCart(dto);
	}
	
	/**
	 * CustomizingDAOImpl의 insertShop 메소드 호출
	 * */
	public static int insertShop(CustomizingPDTO dto) throws SQLException{
		System.out.println("구매 담기 다오");
		  return dao.insertShop(dto);
	}
	
	/**
	 * CustomizingDAOImpl의 selectIngdAll 메소드 호출
	 * */
	public static List<IngdDTO> selectIngdAll() throws SQLException{
		System.out.println("성분테이블 다 가져 다오");
		  return dao.selectIngdAll();
	}
	
	/**
	 * CustomizingDAOImpl의 selectProductAll 메소드 호출
	 * */
	public static List<List<String>> selectProductAll() throws SQLException{
		System.out.println("성분테이블 다 가져 다오");
		  return dao.selectProductAll();
	}
	
	/**
	 * CustomizingDAOImpl의 selectProductAll 메소드 호출
	 * */
	public static List<IngdDTO> selectIngdWhere(String key) throws SQLException{
		System.out.println("성분테이블에서 맞는걸 가져 다오 : " + key);
		  return dao.selectIngdWhere(key);
	}
	
	
}
