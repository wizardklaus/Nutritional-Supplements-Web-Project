package wp.main.model.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import wp.main.dao.ProductDAO;
import wp.main.model.dto.ProductDTO;

public class ProductService {
	ProductDAO productdao = new ProductDAO();
	
	public List<ProductDTO> getTopLike() throws SQLException{
		List<ProductDTO> list = new ArrayList<>();
		list = productdao.getTopLike();
		return list;
	}
	
	public List<String> getUserIngdname(List<String> elist) throws SQLException{
		List<String> list = productdao.getUserIngdname(elist);
		return list;
	}
	
	public List<ArrayList<String>> getpList() throws SQLException{
		List<ArrayList<String>> pList =  productdao.getpList();
		return pList;
	}
	
	public List<String> getProductInfo(List<String> ingdList, List<ArrayList<String>> pList){
		List<String> productList = new ArrayList<>();
		productList = productdao.getProudctInfo(ingdList, pList);
		return productList;
	}
	
}
