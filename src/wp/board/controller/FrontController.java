package wp.board.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.ResourceBundle;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/board")
public class FrontController extends HttpServlet {

    Map<String,Action> map;
	@Override
	public void init() throws ServletException {
		ResourceBundle rb=ResourceBundle.getBundle("wp.board.util.action");
		
		map=new HashMap<String, Action>();
		for(String key: rb.keySet()){
			String value=rb.getString(key);
			try{
				System.out.println();
				Action action=(Action)Class.forName(value).newInstance();
				map.put(key, action);
				
			}catch(Exception e){
				e.printStackTrace();
			}
		}
			
		}
			protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				request.setCharacterEncoding("UTF-8");
				//parameter로 넘어오는 command 값 받기
				String key = request.getParameter("command");
				if(key==null) key="list";
				
				Action action = map.get(key);
				action.execute(request, response);
			}

			protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				   doPost(request, response);
				}
	}

