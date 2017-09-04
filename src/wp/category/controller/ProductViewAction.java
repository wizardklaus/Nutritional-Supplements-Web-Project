package wp.category.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wp.category.dao.ProductDAOImpl;
import wp.category.dto.ProductDTO;

public class ProductViewAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="/theme/product-view.jsp";
		ProductDTO pDto=new ProductDTO();
		
		String url2 =request.getParameter("url");
		
		ProductDAOImpl pDao=ProductDAOImpl.getInstance();
		
		try{
			pDto=pDao.productSelectByURL(url2);
		}catch(SQLException e){
			e.printStackTrace();
		}
		
		request.setAttribute("product", pDto);
		System.out.println(request.getAttribute("product"));
		RequestDispatcher dispatcher=request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
	
}
