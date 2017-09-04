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
		System.out.println("ȿ������ ����� ȭ�� ����ֱ� ���� Servlet");
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter io = response.getWriter();
		
		String url="theme/errorView.jsp";
		
		Map<String, String> dfMap = new HashMap<String, String>();
		dfMap.put("��", "Ÿ�츰");
		dfMap.put("����/��", "�۷��ڻ��");
		dfMap.put("��/�÷º�ȣ", "������");
		dfMap.put("���̾�Ʈ", "L-ī����ƾ");
		dfMap.put("�ܹ���", "�ܹ���");
		dfMap.put("�γ�/���߷�", "���ް�3");
		dfMap.put("��ȭ/��/��", "�����");
		dfMap.put("��Ʈ����/���", "�����ٻ�");
		dfMap.put("�Ƿ�", "��Ÿ��B12");
		dfMap.put("�Ǻ�/Ż��", "���ƾ");
		dfMap.put("�׻�ȭ", "�ڿ�����Q10");
		dfMap.put("���׼�ȯ", "L-�Ƹ����");
		
		try{
			
			String[] effectArray  = request.getParameterValues("effects");
			
			if(effectArray.length>10){
				io.println("<script>");
				io.println("alert('�ִ� 10������ ���� �����մϴ�')");
				io.println("location.href='theme/selectEfficacy.jsp'");
				io.println("</script>");
				return;
			}
			
			System.out.println(effectArray);
			
			request.setAttribute("effectList", effectArray);
			request.setAttribute("effect", 1);
			
			
			//list��ü �����
			//1. IngdTable���� �ִ� ���� �� ��������!
			CustomizingService service = new CustomizingService();
			
			List<IngdDTO> list = service.selectIngdAll();		//�������̺��� ��� ������
			
			List<List<String>> effectList = new ArrayList<>();
			List<String> resultList = new ArrayList<>();	
			List<List<String>> resultRcmd = new ArrayList<>();
			
			String[] tenIngd = new String[10];				//���������� �ѱ� ������
			
			System.out.println(list.size() + ", " +effectArray.length);
			
			System.out.println("\n**************��ġ�ϴ� ������ ã��**************");
			
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
			
			
			System.out.println("\nī��Ʈ ����\n");
			
			for(int i=0; i<effectArray.length-1; i++){	//�� �׸��� ������ŭ
				
				List<IngdDTO> countList = new ArrayList<>();				//���� 10���� �������� ���� ����Ʈ

				for(int j=0; j<effectList.get(i).size(); j++){
					
					int count = 1;
					String tmp = effectList.get(i).get(j);
					
					for(int k=0; k<effectList.get(i+1).size(); k++){	//effectList �ȿ��� ���� ����Ʈ ����

						if(tmp.equals(effectList.get(i+1).get(k))){
							count++;
							effectList.get(i+1).remove(k);  	//�ִ��� ����!
						}
					}
					System.out.println(new IngdDTO(tmp, effectArray[i],count));
					countList.add(new IngdDTO(tmp, effectArray[i],count));
				}
				IngdComparator comp = new IngdComparator();
				Collections.sort(countList, comp);
				
				System.out.println(countList);
				System.out.println("============���� �� ===============");
				System.out.println(countList);
				
				if(countList.get(0).getCount()==1){
					tenIngd[i] = dfMap.get(countList.get(0).getEffect1());
				}
				else{
					tenIngd[i] = countList.get(0).getIngdName();
				}
			}
			
			int size = effectList.size()-1;
			//������ ���̴� ������ default!
			tenIngd[size] = dfMap.get(effectArray[size]);
			
			request.setAttribute("length", size+1);

			
			for(int i=0; i<10; i++){
				System.out.println("���� Data: " + tenIngd[i]);
			}
			
			///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			
			//Ŀ���͸���¡ �� �� ���� ����Ʈ ����
			request.setAttribute("list", tenIngd);
			
			
			//������ ������ǰ ��õ
			List<ProductDTO> prodto = new ArrayList<>();
			
			
			//�ϴ� �� ��������
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
			request.setAttribute("errorMsg", e.getMessage());//�������� ${errorMsg}
		}
		
		request.getRequestDispatcher(url).forward(request, response);	
		
	}
}
