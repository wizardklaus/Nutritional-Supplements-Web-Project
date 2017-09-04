package wp.board.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import wp.board.dto.BoardDTO;
import wp.main.util.DbUtil;

public class BoardDaoImpl implements BoardDAO {

	public List<BoardDTO> boardSelectAll() throws SQLException{
		Connection con=DbUtil.getConnection();
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		List<BoardDTO> list=new ArrayList<BoardDTO>();
		try{
			ps=con.prepareStatement("select * from BOARDTable");
			rs=ps.executeQuery();
			while(rs.next()){ //값들을 list에 넣기
				BoardDTO board=new BoardDTO(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),
						rs.getString(5),rs.getInt(6)/*,rs.getString(7)*/);
				list.add(board);
			}
		}	finally{
				DbUtil.dbClose(con, ps, rs);
			}
			return list;
		}
	
	public int insert(BoardDTO boardDto) throws SQLException{
		Connection con=DbUtil.getConnection();
		PreparedStatement ps=null;
		//ResultSet rs=null; 
		int result=0; //0과 1로 insert유무 나타냄
		//System.out.println("boardDto.getBoardComment() : "  +boardDto.getBoardComment());
		try{ //글번호, 제목, 아이디, 쓴날짜, 내용, 조회수, 답글
			
			ps=con.prepareStatement("insert into BOARDTable values(boardTable_seq.nextval ,?,?,sysdate,?,0,null)"); //BoardNum이랑 아이디는 어떻게 받아오는지
			ps.setString(1,boardDto.getBoardTitle());
			ps.setString(2, boardDto.getUserId()); //세션아이디 - boardDto.getUserId()
			ps.setString(3,boardDto.getBoardContent());
	//		ps.setString(4,boardDto.getBoardComment()); //boardDto.getBoardComment()
		   
			result=ps.executeUpdate();
		}finally{
			DbUtil.dbClose(con, ps,null);
		}
		return result;
	}
	public int delete(String boardNum) throws SQLException{
		Connection con=DbUtil.getConnection();
		PreparedStatement ps=null;
		int result=0;
		
		try{
			ps=con.prepareStatement("delete BOARDTable where BNO=?");
			ps.setString(1,boardNum);
			//ps.setString(2, password);
			result=ps.executeUpdate();
		}finally{
			DbUtil.dbClose(con, ps, null);
		}
		return result;
	}
	
	public int update(BoardDTO boardDto) throws SQLException{
		Connection con=DbUtil.getConnection();
		PreparedStatement ps=null;	
		int result=0; 
		try{
			    
		ps = con.prepareStatement("update BOARDTable set "
				+ " BTITLE=?,BCONTENT=?,BCOUNT=?"
				+ "  where BNO=? ");
	   
		ps.setString(1, boardDto.getBoardTitle());		
		ps.setString(2,boardDto.getBoardContent());
		ps.setInt(3,boardDto.getBoardCount());
	//	ps.setString(4,boardDto.getBoardComment());
		
		result = ps.executeUpdate();
	}finally{
		DbUtil.dbClose(con, ps, null);
	}
	return result;
}	

	public BoardDTO SelectByModelNum(String boardNum, boolean flag) throws SQLException{
		Connection con=DbUtil.getConnection();
		PreparedStatement ps=null;	
		ResultSet rs=null;
		BoardDTO dto=null;
		
		try{
			if(flag){
				ps=con.prepareStatement("update BOARDTable set BCOUNT=BCOUNT+1 where BNO=?");
			    ps.setString(1, boardNum);
			    ps.executeUpdate();
		       }
			
			ps=con.prepareStatement("select * from BOARDTable where BNO=?");
			ps.setString(1, boardNum);
			rs=ps.executeQuery();
		    if(rs.next()){
		    	dto=new BoardDTO(rs.getString(1),rs.getString(2),rs.getString(3),
		    			rs.getString(4),rs.getString(5),rs.getInt(6));
		    	
		    }
		}finally{
		    	DbUtil.dbClose(con, ps, rs);		    	
		    }
		    return dto;
		}


	}
	

	
