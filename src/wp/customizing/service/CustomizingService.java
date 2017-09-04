package wp.customizing.service;

import java.sql.SQLException;
import java.util.List;

import wp.customizing.dao.CustomizingDAOImpl;
import wp.customizing.dto.CustomizingPDTO;
import wp.customizing.dto.IngdDTO;

public class CustomizingService {

private static CustomizingDAOImpl dao = new CustomizingDAOImpl();
	
	/**
	 * CustomizingDAOImpl�� insertCart �޼ҵ� ȣ��
	 * */
	public static int insertCart(CustomizingPDTO dto) throws SQLException{
		System.out.println("��ٱ��� ��� �ٿ�");
		  return dao.insertCart(dto);
	}
	
	/**
	 * CustomizingDAOImpl�� insertShop �޼ҵ� ȣ��
	 * */
	public static int insertShop(CustomizingPDTO dto) throws SQLException{
		System.out.println("���� ��� �ٿ�");
		  return dao.insertShop(dto);
	}
	
	/**
	 * CustomizingDAOImpl�� selectIngdAll �޼ҵ� ȣ��
	 * */
	public static List<IngdDTO> selectIngdAll() throws SQLException{
		System.out.println("�������̺� �� ���� �ٿ�");
		  return dao.selectIngdAll();
	}
	
	/**
	 * CustomizingDAOImpl�� selectProductAll �޼ҵ� ȣ��
	 * */
	public static List<List<String>> selectProductAll() throws SQLException{
		System.out.println("�������̺� �� ���� �ٿ�");
		  return dao.selectProductAll();
	}
	
	/**
	 * CustomizingDAOImpl�� selectProductAll �޼ҵ� ȣ��
	 * */
	public static List<IngdDTO> selectIngdWhere(String key) throws SQLException{
		System.out.println("�������̺��� �´°� ���� �ٿ� : " + key);
		  return dao.selectIngdWhere(key);
	}
	
	
}
