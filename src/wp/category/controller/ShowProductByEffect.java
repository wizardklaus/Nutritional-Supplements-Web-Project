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

/**
 * Servlet implementation class ShowProductByEffect
 */
@WebServlet("/effect")
public class ShowProductByEffect extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String urlPath="errorView.jsp";

		String effect=request.getParameter("effect");
//		request.setAttribute("effect", effect);
		ProductDAO dao =ProductDAOImpl.getInstance();
		try{
			List<ProductDTO> list=dao.productSelectByEffect(effect);
			request.setAttribute("list", list);
			int vectorSize=list.size();
			request.setAttribute("vectorSize", vectorSize);
			if(effect.equals("항산화")){
				urlPath="theme/cate1.jsp";
			}else if(effect.equals("뼈")){
				urlPath="theme/cate2.jsp";
			}else if(effect.equals("피로")){
				urlPath="theme/cate3.jsp";
			}else if(effect.equals("소화")){
				urlPath="theme/cate4.jsp";
			}else if(effect.equals("피부")){
				urlPath="theme/cate5.jsp";
			}else if(effect.equals("디톡스")){
				urlPath="theme/cate6.jsp";
			}else if(effect.equals("시력보호")){
				urlPath="theme/cate7.jsp";
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		request.getRequestDispatcher(urlPath).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
