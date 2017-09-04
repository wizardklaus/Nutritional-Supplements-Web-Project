package wp.board.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wp.board.dto.BoardDTO;
import wp.board.service.BoardService;

public class DeleteBoardAction implements Action {
 //글을 클릭하면 상세보기 글화면에 삭제 버튼 
	

	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardDTO boarddto = new BoardDTO();
		String boardNum = boarddto.getBoardNum();
		try{
			BoardDTO db=BoardService.SelectByModelNum(boardNum, false);
			System.out.println(boardNum);
	if(BoardService.delete(boardNum)>0){
		System.out.println("sdsd");
		response.sendRedirect("board?command=list");
		return;
	}else{
		throw new Exception("삭제되지 않았습니다");
	}
	
	}catch(Exception e){
		e.printStackTrace();
		request.setAttribute("errorMsg",e.getMessage());
}
		PrintWriter out = response.getWriter();
		out.println("<script>");
		out.println("alert(삭제가 완료되었습니다.)");
		out.println("</script>");
		
	request.getRequestDispatcher("theme/main.jsp").forward(request, response);
	
	}

}
