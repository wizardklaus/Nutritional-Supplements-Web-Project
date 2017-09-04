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
		
		//넘어오는 값들 받기
		String boardNum =  request.getParameter("boardNum");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		//String comment =  request.getParameter("comment");
		
		List<UserDTO> user= new ArrayList<>();
		
		
		//유효성 검사
		try{
		  if(title==null || content==null){
			
			  throw new Exception("입력값이 충분하지 않습니다.");
		  }
		  
		  HttpSession session = request.getSession();
  		  
  		  user = (List<UserDTO>)session.getAttribute("userList");
  		  
  		  String user_id = user.get(0).getUser_id();
  		  
  		  System.out.println("user_id : "+ user_id);
  		  
  		  PrintWriter io = response.getWriter(); 
  		
	  		if(user_id==null){
				io.println("<script>alert('로그인을 해야 가능합니다.'); location.href='theme/loginView.jsp';</script>");
				return;
			}
		  
		  
		// BoardDTO db = BoardService.SelectByModelNum(boardNum, false);
		 BoardDTO board = new BoardDTO(user_id, title, content);
		 
			 if( BoardService.update(board) > 0){//수정완료
			
				 url="board?command=detailView&flag=1";
				 //flag=1 하는 이유: 수정시엔 조회수 증가를 안하기위해
			 }else{
				 throw new Exception("수정되지 않았습니다...");
			 }
		
		}catch(Exception e){
			request.setAttribute("errorMsg", e.getMessage());
		}
		
		request.getRequestDispatcher(url).forward(request, response);

	}

}
