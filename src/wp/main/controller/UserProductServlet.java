package wp.main.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import wp.main.model.service.ProductService;

/**
 * Servlet implementation class UserProductServlet
 */
@WebServlet("/userproduct")
public class UserProductServlet extends HttpServlet {
	
	ProductService service = new ProductService();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//사용자가 회원가입할 때 저장한 효능1,2,3에 맞는 제품 추천 기능
		
		try{
			//사용자가 관심있는 효능과 관련있는 성분의 이름들을 담은 리스트
			List<String> ingdList = new ArrayList<>();
//			EffectDTO effectdto = new EffectDTO();
			HttpSession session = request.getSession();
			ingdList = service.getUserIngdname((List<String>)session.getAttribute("userEffectList"));
			
			
			System.out.println("*****사용자가 관심있는 효능을 가진 성분 리스트 출력 *****");
			for(String str : ingdList){
				System.out.println(str);
			}
			
			List<ArrayList<String>> pList = new ArrayList<>();
			pList = service.getpList();
			
			System.out.println("*****제품이름, 성분1~29, url 리스트를 담은 리스트 출력 *****");
			for(int i=0; i<pList.size(); i++){// LIst
				for(int j=0; j<pList.get(i).size(); j++){
					System.out.print(pList.get(i).get(j) + " / ");
				}System.out.println("\n");
			}
			
			List<String> productInfoList = new ArrayList<>();
			productInfoList = service.getProductInfo(ingdList,pList);
			
			System.out.println("productInfoList출력");
			for(int i=0; i<productInfoList.size(); i++){
				System.out.println(productInfoList.get(i));
			}
			//productInfoList 중복 없애기
				
//			String pname[] = new String[300];
			String url[] = new String[300];
			
			for(int i=0; i<productInfoList.size(); i++){
				url[i] = productInfoList.get(i);
			}
			/*System.out.println("*****사용자가 관심있는 효능을 가진 성분을 가진 제품의 이름과 url출력*****");
			for(int i=0; i<pname.length; i++){
				System.out.print(pname[i]+" ");
			}
			for(int i=0; i<url.length; i++){
				System.out.println(url[i]+" ");
			}*/
			
//			session.setAttribute("userProductPname", pname);
			session.setAttribute("userProductUrl", url);
			System.out.println(session.getAttribute("userProductUrl"));
			
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("사용자 관심 효능3가지에 맞는 제품 추천 기능 오류!" + e.getMessage());
		}
		
		PrintWriter out = response.getWriter();
		
		out.println("<script>");
		out.println("location.href = 'theme/userRecommand.jsp'");
		out.println("</script>");
	}

}
