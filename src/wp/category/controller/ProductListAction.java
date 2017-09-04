package wp.category.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wp.category.dao.ProductDAOImpl;
import wp.category.dto.ProductDTO;

public class ProductListAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="/theme/category.jsp";
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		ProductDAOImpl pDao=ProductDAOImpl.getInstance();
		List<ProductDTO> productList = null;
		try{
			productList=pDao.productSelectAll();
		}catch(SQLException e){
			e.printStackTrace();
		}
		
		request.setAttribute("productList", productList);
//		System.out.println(request.getAttribute("productList"));
		RequestDispatcher dispatcher=request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
