package wp.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wp.board.dto.BoardDTO;
import wp.board.service.BoardService;

public class UpdateFormAction implements Action {

	 @Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String boardNum=request.getParameter("boardNum");
		String url="main.jsp";
		try{
			if(boardNum==null){
				throw new Exception("boardNum이 없습니다");
			}
			BoardDTO board=BoardService.SelectByModelNum(boardNum, false);
			if(board==null){
				System.out.println("if 문");
				throw new Exception("글이 없습니다");
				
			}else{
				request.setAttribute("board", board);
				url="editNewBoard.jsp";
				System.out.println("else 문");
			}
		}
			catch(Exception e){
				e.printStackTrace();
				request.setAttribute("errorMsg",e.getMessage());
			}
			request.getRequestDispatcher(url).forward(request, response);
			System.out.println("빠져나옴");
			}
		}
		
