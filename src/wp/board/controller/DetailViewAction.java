package wp.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wp.board.dto.BoardDTO;
import wp.board.service.BoardService;

public class DetailViewAction implements Action {
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="theme/mainView.jsp"; //에러페이지  
		String boardNum=request.getParameter("boardNum");
		String flag=request.getParameter("flag");
		boolean state=true;
		if(flag!=null)state=false;
		
		try{
			
			System.out.println(boardNum + "|" + state);
			
			BoardDTO dto=BoardService.SelectByModelNum(boardNum, state); //조회수 증가
			if(dto==null){
				
		    	throw new Exception(boardNum +"정보가 없습니다.");
		    	
		    }else{
		    	System.out.println(request.getAttribute("list"));
		       request.setAttribute("dto", dto); 	
		       url="theme/editPage.jsp";
		    }
		}catch(Exception e){
			e.printStackTrace();
			request.setAttribute("errorMsg", e.getMessage());
		}
		  
		request.getRequestDispatcher(url).forward(request, response);
	}
}
