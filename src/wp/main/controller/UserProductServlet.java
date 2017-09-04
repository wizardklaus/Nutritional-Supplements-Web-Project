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
		//����ڰ� ȸ�������� �� ������ ȿ��1,2,3�� �´� ��ǰ ��õ ���
		
		try{
			//����ڰ� �����ִ� ȿ�ɰ� �����ִ� ������ �̸����� ���� ����Ʈ
			List<String> ingdList = new ArrayList<>();
//			EffectDTO effectdto = new EffectDTO();
			HttpSession session = request.getSession();
			ingdList = service.getUserIngdname((List<String>)session.getAttribute("userEffectList"));
			
			
			System.out.println("*****����ڰ� �����ִ� ȿ���� ���� ���� ����Ʈ ��� *****");
			for(String str : ingdList){
				System.out.println(str);
			}
			
			List<ArrayList<String>> pList = new ArrayList<>();
			pList = service.getpList();
			
			System.out.println("*****��ǰ�̸�, ����1~29, url ����Ʈ�� ���� ����Ʈ ��� *****");
			for(int i=0; i<pList.size(); i++){// LIst
				for(int j=0; j<pList.get(i).size(); j++){
					System.out.print(pList.get(i).get(j) + " / ");
				}System.out.println("\n");
			}
			
			List<String> productInfoList = new ArrayList<>();
			productInfoList = service.getProductInfo(ingdList,pList);
			
			System.out.println("productInfoList���");
			for(int i=0; i<productInfoList.size(); i++){
				System.out.println(productInfoList.get(i));
			}
			//productInfoList �ߺ� ���ֱ�
				
//			String pname[] = new String[300];
			String url[] = new String[300];
			
			for(int i=0; i<productInfoList.size(); i++){
				url[i] = productInfoList.get(i);
			}
			/*System.out.println("*****����ڰ� �����ִ� ȿ���� ���� ������ ���� ��ǰ�� �̸��� url���*****");
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
			System.out.println("����� ���� ȿ��3������ �´� ��ǰ ��õ ��� ����!" + e.getMessage());
		}
		
		PrintWriter out = response.getWriter();
		
		out.println("<script>");
		out.println("location.href = 'theme/userRecommand.jsp'");
		out.println("</script>");
	}

}
