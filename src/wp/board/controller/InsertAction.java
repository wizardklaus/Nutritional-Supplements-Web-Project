package wp.board.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import wp.board.dto.BoardDTO;
import wp.board.service.BoardService;
import wp.main.model.dto.UserDTO;

public class InsertAction implements Action {
    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String saveDir=request.getSession().getServletContext().getRealPath("/"); //파일 경로 설정하기
    	
    	response.setContentType("text/html;charset='UTF-8'");
    	request.setCharacterEncoding("UTF-8");
    	
    	int maxSize=1024*1024*100;
  	  String encoding="UTF-8";
  	  
  	List<UserDTO> user = new ArrayList<>();
    	    	
  	  try{
  		  MultipartRequest m=new MultipartRequest(request, saveDir,
  				  maxSize, encoding, new DefaultFileRenamePolicy());
  		  
  		  HttpSession session = request.getSession();
  		  
  		  user = (List<UserDTO>)session.getAttribute("userList");
  		  
  		  String user_id = user.get(0).getUser_id();
  		  
  		  System.out.println("user_id : "+ user_id);
  		  
  		  PrintWriter io = response.getWriter(); 
  		
	  		if(user_id==null){
				io.println("<script>alert('로그인을 해야 가능합니다.'); location.href='theme/loginView.jsp';</script>");
				return;
			}
  		  
  		  
  		 //내가 입력받는 정보 받아오기
  		  //글쓴이(안받아와도됨), 제목, 내용, 첨부파일, 코멘트
  		  String title=m.getParameter("title");
	  	  String content=m.getParameter("content");
	  	// String comment=m.getParameter("comment");
	  	  //입력 유무를 체크
	  	 
	  	  if(title==null || content==null ){
	  		throw new Exception("입력값이 충분하지 않습니다.");
	  	  }
  		  content=content.replaceAll("<", "&lt;");
  		  
  		  BoardDTO board=new BoardDTO(user_id, title,content);
  		  
  		  //파일 첨부 코드
  		  int result = 0;
	  		  if((result=BoardService.insert(board))>0){
	  			  response.sendRedirect("board?command=list");
	  			  return;
	  		 }
  		  }catch(Exception e){
  			  e.printStackTrace();
  			  request.setAttribute("errorMsg",e.getMessage());
  			 
  		  }
  	 
  	  request.getRequestDispatcher("mainView.jsp").forward(request, response);
  	
  	  }
    	
    }

