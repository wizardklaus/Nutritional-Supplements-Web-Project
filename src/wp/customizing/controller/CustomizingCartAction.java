package wp.customizing.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import wp.customizing.dto.CustomizingPDTO;
import wp.customizing.service.CustomizingService;

public class CustomizingCartAction implements CustomizingAction {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("장바구니 담기를 위한 Servlet");
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter io = response.getWriter();
		
		String url="theme/errorView.jsp";
		try{
			
			HttpSession session = request.getSession();
			
			//일단 체크한 데이터를 받아
			int price = Integer.parseInt(request.getParameter("price"));
			String[] ingredients =  request.getParameterValues("ingredients");
			int amount = Integer.parseInt(request.getParameter("amount"));
			String cpname = request.getParameter("cpname");
			String user_id = (String)session.getAttribute("user_id");
			
			if(user_id==null){
				io.println("<script>alert('로그인을 해야 가능합니다.'); location.href='theme/loginView.jsp';</script>");
				return;
			}
			
			System.out.println(price);
			System.out.println(ingredients);
			System.out.println(amount);
			
			//성분 넘길 데이터 만들기
			String[] ingd = new String[10];
			
			System.out.println("length : "+ingredients.length);
			
			for(int i=0; i<ingredients.length; i++){
				ingd[i] = ingredients[i];
				System.out.println(i+" : "+ingd[i]);
			}
			
			System.out.println("session에 저장된 회원 아이디 : "+user_id);
			
			CustomizingPDTO dto = new CustomizingPDTO(0, cpname, user_id, ingd[0], ingd[1], ingd[2], ingd[3], ingd[4], ingd[5], ingd[6], ingd[7], ingd[8], ingd[9], price, amount,0);
			
			CustomizingService service = new CustomizingService();
			int result = service.insertCart(dto);
			
			System.out.println("DB결과 : "+result);
			
			if(result>0){
				io.println("<script>");
				io.println("alert('장바구니에 담았습니다!');");
				io.println("location.href='theme/index.jsp';");
				io.println("</script>");
				return;
			}
			
		}catch(Exception e){
			e.printStackTrace();
			request.setAttribute("errorMsg", e.getMessage());//뷰페이지 ${errorMsg}
		}
		
		request.getRequestDispatcher(url).forward(request, response);	
		
	}

}
