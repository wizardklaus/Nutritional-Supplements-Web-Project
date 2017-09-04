package wp.customizing.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wp.customizing.dto.IngdDTO;
import wp.customizing.dto.ProductDTO;
import wp.customizing.service.CustomizingService;

public class CustomizingEffectAction implements CustomizingAction {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("효능으로 만들기 화면 띄워주기 위한 Servlet");
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter io = response.getWriter();
		
		String url="theme/errorView.jsp";
		
		Map<String, String> dfMap = new HashMap<String, String>();
		dfMap.put("간", "타우린");
		dfMap.put("관절/뼈", "글루코사민");
		dfMap.put("눈/시력보호", "루테인");
		dfMap.put("다이어트", "L-카르니틴");
		dfMap.put("단백질", "단백질");
		dfMap.put("두뇌/집중력", "오메가3");
		dfMap.put("소화/위/장", "유산균");
		dfMap.put("스트레스/우울", "판토텐산");
		dfMap.put("피로", "비타민B12");
		dfMap.put("피부/탈모", "비오틴");
		dfMap.put("항산화", "코엔자임Q10");
		dfMap.put("혈액순환", "L-아르기닌");
		
		try{
			
			String[] effectArray  = request.getParameterValues("effects");
			
			if(effectArray.length>10){
				io.println("<script>");
				io.println("alert('최대 10까지만 선택 가능합니다')");
				io.println("location.href='theme/selectEfficacy.jsp'");
				io.println("</script>");
				return;
			}
			
			System.out.println(effectArray);
			
			request.setAttribute("effectList", effectArray);
			request.setAttribute("effect", 1);
			
			
			//list객체 만들기
			//1. IngdTable에서 있는 정보 다 가져오기!
			CustomizingService service = new CustomizingService();
			
			List<IngdDTO> list = service.selectIngdAll();		//성분테이블의 모든 데이터
			
			List<List<String>> effectList = new ArrayList<>();
			List<String> resultList = new ArrayList<>();	
			List<List<String>> resultRcmd = new ArrayList<>();
			
			String[] tenIngd = new String[10];				//최종적으로 넘길 데이터
			
			System.out.println(list.size() + ", " +effectArray.length);
			
			System.out.println("\n**************일치하는 데이터 찾기**************");
			
			for(int j=0; j<effectArray.length; j++){
				
				resultList = new ArrayList<>();	
				
				for(int i=0; i<list.size();i++){
					if(effectArray[j].equals(list.get(i).getEffect1())){
						resultList.add(list.get(i).getIngdName());
					}
					if(effectArray[j].equals(list.get(i).getEffect2())){
						resultList.add(list.get(i).getIngdName());
					}
					if(effectArray[j].equals(list.get(i).getEffect3())){
						resultList.add(list.get(i).getIngdName());
					}
				}
				
				effectList.add(resultList);
			}
			
			System.out.println("+++++++++++++++++");
			for(int i=0; i<effectArray.length; i++){
				System.out.println(effectArray[i]);
			}
			System.out.println(effectList + " ");
			System.out.println("+++++++++++++++++");
			
			
			System.out.println("\n카운트 세기\n");
			
			for(int i=0; i<effectArray.length-1; i++){	//각 항목의 개수만큼
				
				List<IngdDTO> countList = new ArrayList<>();				//상위 10개를 가져오기 위한 리스트

				for(int j=0; j<effectList.get(i).size(); j++){
					
					int count = 1;
					String tmp = effectList.get(i).get(j);
					
					for(int k=0; k<effectList.get(i+1).size(); k++){	//effectList 안에서 다음 리스트 마다

						if(tmp.equals(effectList.get(i+1).get(k))){
							count++;
							effectList.get(i+1).remove(k);  	//있던거 삭제!
						}
					}
					System.out.println(new IngdDTO(tmp, effectArray[i],count));
					countList.add(new IngdDTO(tmp, effectArray[i],count));
				}
				IngdComparator comp = new IngdComparator();
				Collections.sort(countList, comp);
				
				System.out.println(countList);
				System.out.println("============정렬 후 ===============");
				System.out.println(countList);
				
				if(countList.get(0).getCount()==1){
					tenIngd[i] = dfMap.get(countList.get(0).getEffect1());
				}
				else{
					tenIngd[i] = countList.get(0).getIngdName();
				}
			}
			
			int size = effectList.size()-1;
			//마지막 아이는 무조건 default!
			tenIngd[size] = dfMap.get(effectArray[size]);
			
			request.setAttribute("length", size+1);

			
			for(int i=0; i<10; i++){
				System.out.println("보낼 Data: " + tenIngd[i]);
			}
			
			///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			
			//커스터마이징 할 약 성분 리스트 저장
			request.setAttribute("list", tenIngd);
			
			
			//이제는 유사제품 추천
			List<ProductDTO> prodto = new ArrayList<>();
			
			
			//일단 다 가져오기
			resultRcmd  = service.selectProductAll();
			for(int k=0; k<10; k++){
				for(int i=0; i<resultRcmd.size(); i++){
					for(int j=1; j<30;j++){
						String tmp = resultRcmd.get(i).get(j);

						if(tmp!=null){
							if(tmp.equals(tenIngd[k])){
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
			request.setAttribute("errorMsg", e.getMessage());//뷰페이지 ${errorMsg}
		}
		
		request.getRequestDispatcher(url).forward(request, response);	
		
	}
}
