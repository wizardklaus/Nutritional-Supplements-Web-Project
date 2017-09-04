package wp.board.dao;

import java.sql.SQLException;
import java.util.List;

import wp.board.dto.BoardDTO;

public interface BoardDAO {
	//레코드 전체 검색
	List<BoardDTO> boardSelectAll() throws SQLException;
	
    //레코드 삽입
	int insert(BoardDTO boardDto) throws SQLException;
	
	//레코드 삭제
	int delete(String boardNum) throws SQLException;
	
	//레코드 수정 
	int update(BoardDTO boardDto) throws SQLException;
	
	//조회수
	BoardDTO SelectByModelNum(String boardNum, boolean flag) throws SQLException;
}
