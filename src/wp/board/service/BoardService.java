package wp.board.service;

import java.sql.SQLException;
import java.util.List;

import wp.board.dao.BoardDaoImpl;
import wp.board.dto.BoardDTO;


public class BoardService {
	private static BoardDaoImpl boardDaoImpl=new BoardDaoImpl();
	//BoardDaoImpl 호출
	
	
	//레코드 전체 검색
		public static List<BoardDTO> boardSelectAll() throws SQLException{
			return boardDaoImpl.boardSelectAll();
		}
	    //레코드 삽입
		public static int insert(BoardDTO boardDto) throws SQLException{
			return boardDaoImpl.insert(boardDto);
		}
		//레코드 삭제
		public static int delete(String boardNum) throws SQLException{
			return boardDaoImpl.delete(boardNum);
		}
		//레코드 수정 
		public static int update(BoardDTO boardDto) throws SQLException{
			return boardDaoImpl.update(boardDto);
		}
		//조회수
		 public static BoardDTO SelectByModelNum(String boardNum, boolean flag) throws SQLException{
			  return boardDaoImpl.SelectByModelNum(boardNum , flag);
		  }
}
