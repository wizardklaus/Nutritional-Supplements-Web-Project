package wp.category.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wp.category.dao.ProductDAO;
import wp.category.dao.ProductDAOImpl;
import wp.category.dto.ProductDTO;

@WebServlet("/searchProduct")
public class SearchProduct extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String urlPath="errorView.jsp";
		
		String pname=request.getParameter("searchName");
		request.setAttribute("searchName", pname);
		
		ProductDAO dao=ProductDAOImpl.getInstance();
		try{
			List<ProductDTO> list=dao.productSelectBySubject(pname);
			request.setAttribute("list", list);
			int vectorSize=list.size();
			request.setAttribute("vectorSize", vectorSize);
			urlPath="theme/selectedProduct.jsp";
		}catch(Exception e){
			request.setAttribute("errorMsg", "에러가 발생하였습니다. 다시 시도해주세요.");
			request.setAttribute("redirectPath", "index.html");
		}
		request.getRequestDispatcher(urlPath).forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doGet(req, resp);
	}
}
