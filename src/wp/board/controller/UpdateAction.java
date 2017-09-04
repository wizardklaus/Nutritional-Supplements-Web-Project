package wp.board.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import wp.board.dto.BoardDTO;
import wp.board.service.BoardService;
import wp.main.model.dto.UserDTO;


public class UpdateAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="main.jsp";
		
		//�Ѿ���� ���� �ޱ�
		String boardNum =  request.getParameter("boardNum");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		//String comment =  request.getParameter("comment");
		
		List<UserDTO> user= new ArrayList<>();
		
		
		//��ȿ�� �˻�
		try{
		  if(title==null || content==null){
			
			  throw new Exception("�Է°��� ������� �ʽ��ϴ�.");
		  }
		  
		  HttpSession session = request.getSession();
  		  
  		  user = (List<UserDTO>)session.getAttribute("userList");
  		  
  		  String user_id = user.get(0).getUser_id();
  		  
  		  System.out.println("user_id : "+ user_id);
  		  
  		  PrintWriter io = response.getWriter(); 
  		
	  		if(user_id==null){
				io.println("<script>alert('�α����� �ؾ� �����մϴ�.'); location.href='theme/loginView.jsp';</script>");
				return;
			}
		  
		  
		// BoardDTO db = BoardService.SelectByModelNum(boardNum, false);
		 BoardDTO board = new BoardDTO(user_id, title, content);
		 
			 if( BoardService.update(board) > 0){//�����Ϸ�
			
				 url="board?command=detailView&flag=1";
				 //flag=1 �ϴ� ����: �����ÿ� ��ȸ�� ������ ���ϱ�����
			 }else{
				 throw new Exception("�������� �ʾҽ��ϴ�...");
			 }
		
		}catch(Exception e){
			request.setAttribute("errorMsg", e.getMessage());
		}
		
		request.getRequestDispatcher(url).forward(request, response);

	}

}
