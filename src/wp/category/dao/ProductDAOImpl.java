package wp.category.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import wp.category.dto.CartDTO;
import wp.category.dto.ProductDTO;
import wp.category.util.DbUtil;

public class ProductDAOImpl implements ProductDAO {
	
	private ProductDAOImpl(){}
	
	private static ProductDAOImpl instance=new ProductDAOImpl();
	
	public static ProductDAOImpl getInstance(){
		return instance;
	}

	@Override
	public List<ProductDTO> productSelectAll() throws SQLException {		
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<ProductDTO> list = new ArrayList<>();
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement("select * from producttable");
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(
				new ProductDTO(rs.getString(1), 
						rs.getString(2),
						rs.getString(3), 
						rs.getString(4), 
						rs.getString(5),
						rs.getString(6),
						rs.getString(7),
						rs.getString(8),
						rs.getString(9),
						rs.getString(10),
						rs.getString(11),
						rs.getString(12),
						rs.getString(13),
						rs.getString(14),
						rs.getString(15),
						rs.getString(16),
						rs.getString(17),
						rs.getString(18),
						rs.getString(19),
						rs.getString(20),
						rs.getString(21),
						rs.getString(22),
						rs.getString(23),
						rs.getString(24),
						rs.getString(25),
						rs.getString(26),
						rs.getString(27),
						rs.getString(28),
						rs.getString(29),
						rs.getString(30),
						rs.getInt(31),
						rs.getString(32),
						rs.getString(33)));
			}
		}catch(SQLException e){
				e.printStackTrace();
		}finally{
			DbUtil.dbClose(con, ps, rs);
		}
		return list;
	}

	@Override
	public List<ProductDTO> productSelectBySubject(String pname) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<ProductDTO> list = new ArrayList<>();
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement("select * from producttable where pname like '?'");
			ps.setString(1, "%"+pname+"%"); 
			rs = ps.executeQuery();
			while(rs.next()) {
				list.add(new ProductDTO(rs.getString(1), 
						rs.getString(2),
						rs.getString(3), 
						rs.getString(4), 
						rs.getString(5),
						rs.getString(6),
						rs.getString(7),
						rs.getString(8),
						rs.getString(9),
						rs.getString(10),
						rs.getString(11),
						rs.getString(12),
						rs.getString(13),
						rs.getString(14),
						rs.getString(15),
						rs.getString(16),
						rs.getString(17),
						rs.getString(18),
						rs.getString(19),
						rs.getString(20),
						rs.getString(21),
						rs.getString(22),
						rs.getString(23),
						rs.getString(24),
						rs.getString(25),
						rs.getString(26),
						rs.getString(27),
						rs.getString(28),
						rs.getString(29),
						rs.getString(30),
						rs.getInt(31),
						rs.getString(32),
						rs.getString(33)));
			}
		} finally {
			DbUtil.dbClose(con, ps, rs);
		}
		return list;
	}

	@Override
	public List<ProductDTO> productSelectByEffect(String effect) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		List<ProductDTO> list=new ArrayList<>();
		try{
			con=DbUtil.getConnection();
			ps=con.prepareStatement("select * from producttable where effect = ?");
			ps.setString(1, effect);
			rs=ps.executeQuery();
			while(rs.next()){
				list.add(new ProductDTO(rs.getString(1), 
						rs.getString(2),
						rs.getString(3), 
						rs.getString(4), 
						rs.getString(5),
						rs.getString(6),
						rs.getString(7),
						rs.getString(8),
						rs.getString(9),
						rs.getString(10),
						rs.getString(11),
						rs.getString(12),
						rs.getString(13),
						rs.getString(14),
						rs.getString(15),
						rs.getString(16),
						rs.getString(17),
						rs.getString(18),
						rs.getString(19),
						rs.getString(20),
						rs.getString(21),
						rs.getString(22),
						rs.getString(23),
						rs.getString(24),
						rs.getString(25),
						rs.getString(26),
						rs.getString(27),
						rs.getString(28),
						rs.getString(29),
						rs.getString(30),
						rs.getInt(31),
						rs.getString(32),
						rs.getString(33)));
			}
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			DbUtil.dbClose(con, ps, rs);
		}
		return list;
	}

	@Override
	public ProductDTO productSelectByURL(String url) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		ProductDTO productDTO=null;
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement("select * from producttable where url = ?");
			ps.setString(1, url);
			rs = ps.executeQuery();
			if(rs.next()) {
				System.out.println("ifÀý µé¾î¿È!");
				productDTO = new ProductDTO(rs.getString(1), 
						rs.getString(2),
						rs.getString(3), 
						rs.getString(4), 
						rs.getString(5),
						rs.getString(6),
						rs.getString(7),
						rs.getString(8),
						rs.getString(9),
						rs.getString(10),
						rs.getString(11),
						rs.getString(12),
						rs.getString(13),
						rs.getString(14),
						rs.getString(15),
						rs.getString(16),
						rs.getString(17),
						rs.getString(18),
						rs.getString(19),
						rs.getString(20),
						rs.getString(21),
						rs.getString(22),
						rs.getString(23),
						rs.getString(24),
						rs.getString(25),
						rs.getString(26),
						rs.getString(27),
						rs.getString(28),
						rs.getString(29),
						rs.getString(30),
						rs.getInt(31),
						rs.getString(32),
						rs.getString(33));
			}
		}finally {
			DbUtil.dbClose(con, ps, rs);
		}
		
		return productDTO;
	}

	@Override
	public int cartInsert(CartDTO cartDTO) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		int result = 0;
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement("insert into cartTable values (cartTable_seq.nextval, ?, ?, sysdate, ?)");
			ps.setString(1, cartDTO.getUser_id());
			ps.setString(2, cartDTO.getPname());
			ps.setInt(3, cartDTO.getAmount());
			result = ps.executeUpdate();
		} finally {
			DbUtil.dbClose(con, ps);
		}
		return result;
	}

/*	@Override
	public int productUpdate(ProductDTO ProductDTO) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		int result = 0;
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement("update product set content = ? where product_no = ?");
			ps.setString(1, ProductDTO.getContent());
			ps.setInt(2, ProductDTO.getproductNo());
			result = ps.executeUpdate();
		} finally {
			DbUtil.dbClose(con, ps);
		}
		return result;
	}*/

/*	@Override
	public int productDelete(int productNo) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		int result = 0;
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement("delete from product where product_no = ?");
			ps.setInt(1, productNo);
			result = ps.executeUpdate();
		} finally {
			DbUtil.dbClose(con, ps);
		}
		return result;
	}*/

}
