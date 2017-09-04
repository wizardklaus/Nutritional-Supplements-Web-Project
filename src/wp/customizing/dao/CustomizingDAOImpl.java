package wp.customizing.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import wp.main.util.DbUtil;
import wp.customizing.dto.CustomizingPDTO;
import wp.customizing.dto.IngdDTO;

public class CustomizingDAOImpl implements CustomizingDAO {

	@Override
	public int insertShop(CustomizingPDTO dto) throws SQLException {
		
		Connection con = null;
		PreparedStatement ps =null;
		int result = 0;
		
		try{
			con = DbUtil.getConnection();
			System.out.println("DB접근중");
			ps = con.prepareStatement("insert into CUSTOMIZINGPTable values(CUSTOMIZINGPTable_seq.nextval,?,?,?,?,?,?,?,?,?,?,?,?,?,?,1)");
			ps.setString(1, dto.getCpname());
			ps.setString(2, dto.getUser_id());
			ps.setString(3, dto.getIngdName1());
			ps.setString(4, dto.getIngdName2());
			ps.setString(5, dto.getIngdName3());
			ps.setString(6, dto.getIngdName4());
			ps.setString(7, dto.getIngdName5());
			ps.setString(8, dto.getIngdName6());
			ps.setString(9, dto.getIngdName7());
			ps.setString(10, dto.getIngdName8());
			ps.setString(11, dto.getIngdName9());
			ps.setString(12, dto.getIngdName10());
			ps.setInt(13, dto.getPrice());
			ps.setInt(14, dto.getAmount());
			
			result=ps.executeUpdate();
			
		}finally{
			DbUtil.dbClose(con, ps, null);
		}
		return result;
	}

	@Override
	public int insertCart(CustomizingPDTO dto) throws SQLException {
		Connection con =DbUtil.getConnection();
		PreparedStatement ps =null;
		int result =0;
		
		try{
			System.out.println("DB접근중");
			ps = con.prepareStatement("insert into CUSTOMIZINGPTable values(CUSTOMIZINGPTable_seq.nextval,?,?,?,?,?,?,?,?,?,?,?,?,?,?,0)");
			ps.setString(1, dto.getCpname());
			ps.setString(2, dto.getUser_id());
			ps.setString(3, dto.getIngdName1());
			ps.setString(4, dto.getIngdName2());
			ps.setString(5, dto.getIngdName3());
			ps.setString(6, dto.getIngdName4());
			ps.setString(7, dto.getIngdName5());
			ps.setString(8, dto.getIngdName6());
			ps.setString(9, dto.getIngdName7());
			ps.setString(10, dto.getIngdName8());
			ps.setString(11, dto.getIngdName9());
			ps.setString(12, dto.getIngdName10());
			ps.setInt(13, dto.getPrice());
			ps.setInt(14, dto.getAmount());
			
			result=ps.executeUpdate();
			
		}finally{
			DbUtil.dbClose(con, ps, null);
		}
		return result;
	}
	
	@Override
	public List<IngdDTO> selectIngdAll() throws SQLException{
		
		Connection con =DbUtil.getConnection();
		PreparedStatement ps =null;
		ResultSet rs = null;
		List<IngdDTO> list = new ArrayList<>();
		
		try{
			System.out.println("DB접근중");
			ps = con.prepareStatement("select * from IngdTable");
			rs=ps.executeQuery();
			
			while(rs.next()){
				IngdDTO dto = new IngdDTO(rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
			    list.add(dto);
			}
			
		}finally{
			DbUtil.dbClose(con, ps, null);
		}
		
		return list;
	}
	
	@Override
	public List<List<String>> selectProductAll() throws SQLException {
		Connection con =DbUtil.getConnection();
		PreparedStatement ps =null;
		ResultSet rs = null;
		List<List<String>> list = new ArrayList<>();
		
		try{
			System.out.println("DB접근중");
			ps = con.prepareStatement("select * from ProductTable");
			rs=ps.executeQuery();
			
			while(rs.next()){
				List<String> list_s = new ArrayList<>();
				for(int i=1; i<=33; i++){
					list_s.add(rs.getString(i));
				}
			    list.add(list_s);
			}
			
		}finally{
			DbUtil.dbClose(con, ps, null);
		}
		
		return list;
	}
	
	@Override
	public List<IngdDTO> selectIngdWhere(String key) throws SQLException {
		Connection con =DbUtil.getConnection();
		PreparedStatement ps =null;
		ResultSet rs = null;
		List<IngdDTO> list = new ArrayList<>();
		
		try{
			System.out.println("DB접근중");
			ps = con.prepareStatement("select ingdname from IngdTable where ingdname like '" + key+"%'");
			rs=ps.executeQuery();
			
			while(rs.next()){
				list.add(new IngdDTO(rs.getString(1),0));
			}
			
		}finally{
			DbUtil.dbClose(con, ps, null);
		}
		
		return list;
	}
}
