package wp.board.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wp.board.dto.BoardDTO;
import wp.board.service.BoardService;



public class SelectAction implements Action {
/*
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		execute(request, response);
*/
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="theme/mainView.jsp";
		
		//에러메세지
		try{
			List<BoardDTO> list=BoardService.boardSelectAll();
//			HttpSession  session = request.getSession();
			request.setAttribute("list",list);
			url="theme/board.jsp";
			
			
		}catch(SQLException e){
			e.printStackTrace();
			request.setAttribute("errorMsg", e.getMessage());//뷰페이지 ${errorMsg}

		}
		
		 request.getRequestDispatcher(url).forward(request, response);

	}
}
