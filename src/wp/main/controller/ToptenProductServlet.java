package wp.main.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import wp.main.model.dto.ProductDTO;
import wp.main.model.service.ProductService;

/**
 * Servlet implementation class TopProductServlet
 */
@WebServlet("/product")
public class ToptenProductServlet extends HttpServlet {
	
	ProductService service = new ProductService();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doPost(req, resp);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//���� ���� Ƚ���� ���� ��ǰ �����ֱ�(��õ) ���
		try{
			List<ProductDTO> list = new ArrayList<>();
			list = service.getTopLike(); 
			System.out.println("������ ��ǰ �̸�: "+list.get(0).getPname());
			System.out.println("������ ��ǰ url: "+list.get(0).getUrl());
			HttpSession session = request.getSession();
			session.setAttribute("url", list.get(0).getUrl());
			session.setAttribute("pname", list.get(0).getPname());
			//System.out.println(request.getAttribute("url"));
			//System.out.println(request.getAttribute("pname"));
			request.setAttribute("list", list);
			System.out.println("TOP10��ǰ select ��������!");
		}catch(Exception e){
			System.out.println("TOP10��ǰ select ���� " + e.getMessage());
		}
		
		PrintWriter out = response.getWriter();
		
		out.println("<script>");
		out.println("location.href = 'theme/mainView.jsp'");
		out.println("</script>");
		
		
	}

}
