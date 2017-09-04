package wp.board.service;

import java.sql.SQLException;
import java.util.List;

import wp.board.dao.BoardDaoImpl;
import wp.board.dto.BoardDTO;


public class BoardService {
	private static BoardDaoImpl boardDaoImpl=new BoardDaoImpl();
	//BoardDaoImpl ȣ��
	
	
	//���ڵ� ��ü �˻�
		public static List<BoardDTO> boardSelectAll() throws SQLException{
			return boardDaoImpl.boardSelectAll();
		}
	    //���ڵ� ����
		public static int insert(BoardDTO boardDto) throws SQLException{
			return boardDaoImpl.insert(boardDto);
		}
		//���ڵ� ����
		public static int delete(String boardNum) throws SQLException{
			return boardDaoImpl.delete(boardNum);
		}
		//���ڵ� ���� 
		public static int update(BoardDTO boardDto) throws SQLException{
			return boardDaoImpl.update(boardDto);
		}
		//��ȸ��
		 public static BoardDTO SelectByModelNum(String boardNum, boolean flag) throws SQLException{
			  return boardDaoImpl.SelectByModelNum(boardNum , flag);
		  }
}
