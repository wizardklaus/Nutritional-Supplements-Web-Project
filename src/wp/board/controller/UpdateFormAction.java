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
				throw new Exception("boardNum�� �����ϴ�");
			}
			BoardDTO board=BoardService.SelectByModelNum(boardNum, false);
			if(board==null){
				System.out.println("if ��");
				throw new Exception("���� �����ϴ�");
				
			}else{
				request.setAttribute("board", board);
				url="editNewBoard.jsp";
				System.out.println("else ��");
			}
		}
			catch(Exception e){
				e.printStackTrace();
				request.setAttribute("errorMsg",e.getMessage());
			}
			request.getRequestDispatcher(url).forward(request, response);
			System.out.println("��������");
			}
		}
		
