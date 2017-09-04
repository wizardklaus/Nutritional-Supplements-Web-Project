package wp.main.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wp.main.model.dto.UserDTO;
import wp.main.model.service.UserService;

/**
 * Servlet implementation class JoinServlet
 */
@WebServlet("/join")
public class JoinServlet extends HttpServlet {
	
	UserService service = new UserService();
	UserDTO userdto = new UserDTO();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		String user_id = request.getParameter("id");
		String upwd = request.getParameter("pwd");
		String uname = request.getParameter("uname");
		String ubirth = request.getParameter("ubirth");
		String uaddr = request.getParameter("uaddr");
		String umobile = request.getParameter("umobile");
		String ugender[] = request.getParameterValues("ugender");
		String effect[] = request.getParameterValues("effect");
		
		String ugender2 = ugender[0];
		String effect1 = effect[0];
		String effect2 = effect[1];
		String effect3 = effect[2];
		
		System.out.println(user_id + upwd + uname + ubirth + uaddr + umobile + ugender2 + effect1 + effect2 + effect3);
		String urlPath = "theme/joinOkView.jsp";
		
		try{
			UserDTO userdto = new UserDTO(user_id, upwd, uname, ubirth, uaddr, umobile, ugender2, effect1, effect2, effect3);
			int result = service.insertUser(userdto);
			if(result > 0){
				System.out.println("회원가입 성공!");
			}
		}catch(Exception e){
			System.out.println("회원가입 오류 발생" + e.getMessage());
		}
		request.getRequestDispatcher(urlPath).forward(request, response);
	}

}
