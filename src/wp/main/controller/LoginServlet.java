package wp.main.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import wp.main.model.dto.EffectDTO;
import wp.main.model.dto.UserDTO;
import wp.main.model.service.UserService;

/**
 * Servlet implementation class LoginCheckServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	
	UserService service = new UserService();
	UserDTO userdto = new UserDTO();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String urlPath = "theme/mainView.jsp";
		
		try{
			List<UserDTO> list = service.selectUser(id, pwd); 
			if(list.get(0).getUser_id().equals(id) && list.get(0).getUpwd().equals(pwd)){
				System.out.println("db���� ���� / id,pwd ��ġ��");
				System.out.println(list.get(0).getUser_id()+"���� �α��� �ϼ̽��ϴ�.");
				HttpSession session = request.getSession();
				session.setAttribute("userList", list);
				
				//����ڰ� ȸ�������� �� ������ ���ɻ� 3���� ȿ���� ������ ����Ʈ
				List<String> userEffectList = new ArrayList<>();
				userEffectList.add(list.get(0).getEffect1());
				userEffectList.add(list.get(0).getEffect2());
				userEffectList.add(list.get(0).getEffect3());
				EffectDTO effectdto = new EffectDTO(userEffectList);//�ʿ��������� UserProductServlet�� �����ϱ� ����
				session.setAttribute("userEffectList", userEffectList);
			}
		}catch(Exception e){
			System.out.println("�α��� ���� �߻�"+e.getMessage());
		}
		request.getRequestDispatcher(urlPath).forward(request, response);
		
	}

}
