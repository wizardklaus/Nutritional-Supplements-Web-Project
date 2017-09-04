package wp.main.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import wp.main.model.dto.ProductDTO;
import wp.main.util.DbUtil;

public class ProductDAO {
	
	public List<ProductDTO> getTopLike() throws SQLException{
		
		List<ProductDTO> list = new ArrayList<>();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try{
			con = DbUtil.getConnection();
			System.out.println("db연결 성공!");
			ps = con.prepareStatement("select url, pname from shoptable group by pname,url having sum(amount)>3");
			rs = ps.executeQuery();
			System.out.println("top10제품 select 성공!");
			while(rs.next()){
				String url = rs.getString(1);
				String pname = rs.getString(2);
				list.add(new ProductDTO(url, pname));
			}
			
		}finally{
			DbUtil.dbClose(con, ps, rs);
		}
		return list;
	}
	
	public List<String> getUserIngdname(List<String> elist) throws SQLException{
		
		List<String> list = new ArrayList<>();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select distinct ingdname from ingdtable i, usertable u where i.effect1 in (?, ?, ?) or i.effect2 in (?, ?, ?) or i.effect3 in (?, ?, ?)";
		try{
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, elist.get(0));ps.setString(2, elist.get(1));ps.setString(3, elist.get(2));
			ps.setString(4, elist.get(0));ps.setString(5, elist.get(1));ps.setString(6, elist.get(2));
			ps.setString(7, elist.get(0));ps.setString(8, elist.get(1));ps.setString(9, elist.get(2));
			rs = ps.executeQuery();
			while(rs.next()){
				String ingdname = rs.getString("ingdname");
				list.add(ingdname);
			}
		}finally{
			DbUtil.dbClose(con, ps, rs);
		}
//		System.out.println("list : "+list);
		return list;
	}
	
	public List<ArrayList<String>> getpList() throws SQLException{

		
		List<ArrayList<String>> pList = new ArrayList<>();

		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try{
			con = DbUtil.getConnection();
			ps = con.prepareStatement("select pname, ingdname1, ingdname2, ingdname3, ingdname4, ingdname5, ingdname6, ingdname7, ingdname8, ingdname9, ingdname10, ingdname11, ingdname12, ingdname13, ingdname14, ingdname15, ingdname16, ingdname17, ingdname18, ingdname19, ingdname20, ingdname21, ingdname22, ingdname23, ingdname24, ingdname25, ingdname26, ingdname27, ingdname28,ingdname29, url from producttable");
			rs = ps.executeQuery();
			/*int index=0;
			System.out.println("@@@@@@@@@@@@@@@");*/
			while(rs.next()){
				ArrayList<String> list = new ArrayList<>();
				
				for(int i=1; i<=31; i++){
					list.add(rs.getString(i));
				}
				
				pList.add(list);
				
				/*System.out.println(pList.get(index).get(0));
				System.out.println(pList.get(index).get(1));
				System.out.println();
				index++;*/
			}
			
//			System.out.println("@@@@@@@@@@@@@ index="+index);
		}finally{
			DbUtil.dbClose(con, ps, rs);
		}
		return pList;
	}
	
	public List<String> getProudctInfo(List<String> ingdList, List<ArrayList<String>> pList){
		
		
		List<String> productInfoList = new ArrayList<>();
		System.out.println("*****사용자가 관심있는 효능을 가진 성분을 가진 제품의 이름과 url출력*****");
		for(int i=0; i<ingdList.size(); i++){
			for(int j=0; j<pList.size(); j++){
				for(int k=0; k<pList.get(j).size(); k++){
					if(ingdList.get(i).equals(pList.get(j).get(k))){
//						productInfoList.add(pList.get(j).get(0));
						productInfoList.add(pList.get(j).get(30));
					}
				}
			}
		}
//		for(int i=0; i<productInfoList.size(); i++){
//			System.out.println(productInfoList.get(i));
//		}
		return productInfoList;
	}
	
	
}
