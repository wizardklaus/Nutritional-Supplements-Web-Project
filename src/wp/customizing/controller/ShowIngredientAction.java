package wp.customizing.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import wp.customizing.dto.IngdDTO;
import wp.customizing.service.CustomizingService;

public class ShowIngredientAction implements CustomizingAction {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("성분 데이터를 가져오기 위한 Servlet");
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		String url="theme/errorView.jsp";
		
		CustomizingService service = new CustomizingService();
		
		String key = request.getParameter("ingdName");
		System.out.println(key);
		
		try{
			List<IngdDTO> list = service.selectIngdWhere(key);
			
			System.out.println(list);
			
			PrintWriter out = response.getWriter();
			
			System.out.println(list.size());
			
			if(list.size()>0){
				//list를 javaScript 사용할수 있는 데이터유형으로 변경!!
				JSONArray jsonArr = JSONArray.fromObject(list);
				out.println(jsonArr);
			}
			
			url="/WowPillProject/theme/selectIngredient.jsp";
			
		}catch(Exception e){
			e.printStackTrace();
			request.setAttribute("errorMsg", e.getMessage());//뷰페이지 ${errorMsg}
		}
	}
}
