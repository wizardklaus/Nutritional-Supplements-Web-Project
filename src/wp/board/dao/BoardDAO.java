package wp.board.dao;

import java.sql.SQLException;
import java.util.List;

import wp.board.dto.BoardDTO;

public interface BoardDAO {
	//���ڵ� ��ü �˻�
	List<BoardDTO> boardSelectAll() throws SQLException;
	
    //���ڵ� ����
	int insert(BoardDTO boardDto) throws SQLException;
	
	//���ڵ� ����
	int delete(String boardNum) throws SQLException;
	
	//���ڵ� ���� 
	int update(BoardDTO boardDto) throws SQLException;
	
	//��ȸ��
	BoardDTO SelectByModelNum(String boardNum, boolean flag) throws SQLException;
}
