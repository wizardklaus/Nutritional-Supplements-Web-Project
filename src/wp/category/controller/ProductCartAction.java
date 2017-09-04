package wp.category.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import wp.category.dao.ProductDAOImpl;
import wp.category.dto.CartDTO;
import wp.category.dto.ProductDTO;
import wp.main.model.dto.UserDTO;

@WebServlet("/ProductCartAction")
public class ProductCartAction extends HttpServlet implements Action{
	
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*HttpSession session = request.getSession();
		if(session.getAttribute("userList") != null){
		*/
		
			request.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=UTF-8");
			
			System.out.println("ProductCartAction 들어옴");
			String url="/theme/category-cart.jsp";
			
			ProductDTO pDto=new ProductDTO();
			
			String url2 =request.getParameter("url");
			
			ProductDAOImpl pDao=ProductDAOImpl.getInstance();
			
			List<UserDTO> user = new ArrayList<>();
			
			try{
				
				HttpSession session = request.getSession();
		  		  
		  		  user = (List<UserDTO>)session.getAttribute("userList");
		  		
		  		  PrintWriter io = response.getWriter();
		  		
			  		if(user==null){
						io.println("<script>alert('로그인을 해야 가능합니다.'); location.href='theme/loginView.jsp';</script>");
						return;
					}
			  		
				pDto=pDao.productSelectByURL(url2);
			}catch(SQLException e){
				e.printStackTrace();
			}
			
			request.setAttribute("product", pDto);
			System.out.println("-----------------"+request.getAttribute("product"));
			RequestDispatcher dispatcher=request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
		
		/*}else{
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("location.href = '${pageContext.request.contextPath}/theme/cartErrorView.jsp'");
			out.println("</script");			
		}*/
	}

}
