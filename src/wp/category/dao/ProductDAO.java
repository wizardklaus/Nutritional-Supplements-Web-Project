package wp.category.dao;

import java.sql.SQLException;
import java.util.List;

import wp.category.dto.CartDTO;
import wp.category.dto.ProductDTO;

public interface ProductDAO {

	List<ProductDTO> productSelectAll() throws SQLException;
	
	List<ProductDTO> productSelectBySubject(String pname) throws SQLException;
	
	List<ProductDTO> productSelectByEffect(String effect) throws SQLException;
	
	ProductDTO productSelectByURL(String pname) throws SQLException;
	
	int cartInsert(CartDTO cartDTO) throws SQLException;
/*
	int productUpdate(ProductDTO ProductDTO) throws SQLException;
	
	int productDelete(int productNo) throws SQLException;*/
	
}
