package wp.customizing.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wp.customizing.dto.ProductDTO;
import wp.customizing.service.CustomizingService;

public class CustomizingIngredientAction implements CustomizingAction {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("�������� ����� ȭ�� ����ֱ� ���� Servlet");
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter io = response.getWriter();
		
		String url="theme/errorView.jsp";
		
		CustomizingService service = new CustomizingService();
		
		List<List<String>> resultRcmd = new ArrayList<>();

		
		try{
			String[] ingdArray = new String[10];
			ingdArray  = request.getParameterValues("ingds");
			
			if(ingdArray.length>10){
				io.println("<script>");
				io.println("alert('�ִ� 10������ ���� �����մϴ�')");
				io.println("location.href='theme/selectIngredient.jsp'");
				io.println("</script>");
				return;
			}
			
			System.out.println(ingdArray);
			
			request.setAttribute("list", ingdArray);
			request.setAttribute("effect", 0);
			request.setAttribute("length", ingdArray.length);
			
			
			////////////////////////////////////��õ�����////////////////////////////////////////////////////
			
			//������ ������ǰ ��õ
			List<ProductDTO> prodto = new ArrayList<>();
			
			System.out.println(")) : " + ingdArray);
			
			//�ϴ� �� ��������
			resultRcmd  = service.selectProductAll();
			for(int k=0; k<ingdArray.length; k++){
				for(int i=0; i<resultRcmd.size(); i++){
					for(int j=1; j<30;j++){
						String tmp = resultRcmd.get(i).get(j);
						
						if(tmp!=null){
							if(tmp.equals(ingdArray[k])){
								prodto.add(new ProductDTO(resultRcmd.get(i).get(0), resultRcmd.get(i).get(32)));
							}
						}
					}
				}
			}

			System.out.println(prodto);
			
			request.setAttribute("product", prodto);
		
		
		url="theme/customized.jsp";
			
		}catch(Exception e){
			e.printStackTrace();
			request.setAttribute("errorMsg", e.getMessage());//�������� ${errorMsg}
		}
		
		
		request.getRequestDispatcher(url).forward(request, response);	
		
	}
}
