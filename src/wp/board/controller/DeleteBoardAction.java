package wp.board.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wp.board.dto.BoardDTO;
import wp.board.service.BoardService;

public class DeleteBoardAction implements Action {
 //���� Ŭ���ϸ� �󼼺��� ��ȭ�鿡 ���� ��ư 
	

	
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
		throw new Exception("�������� �ʾҽ��ϴ�");
	}
	
	}catch(Exception e){
		e.printStackTrace();
		request.setAttribute("errorMsg",e.getMessage());
}
		PrintWriter out = response.getWriter();
		out.println("<script>");
		out.println("alert(������ �Ϸ�Ǿ����ϴ�.)");
		out.println("</script>");
		
	request.getRequestDispatcher("theme/main.jsp").forward(request, response);
	
	}

}
