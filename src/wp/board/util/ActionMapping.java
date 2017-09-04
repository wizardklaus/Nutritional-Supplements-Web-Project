package wp.board.util;

import java.util.HashMap;
import java.util.Map;
import java.util.ResourceBundle;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import wp.board.controller.Action;



public class ActionMapping {
	public class ActionMappingListener implements ServletContextListener {

	    public void contextDestroyed(ServletContextEvent arg0)  { }
	    public void contextInitialized(ServletContextEvent e)  { 
	        //contextparam��������
	    	ServletContext context = e.getServletContext();
	    	String fileName = context.getInitParameter("fileName");
	    	
	    	//���ҹ������̿��ؼ� ���� �ε�
	    	ResourceBundle rb = ResourceBundle.getBundle(fileName);
	    	
	    	Map<String, Action> map = new HashMap<String, Action>();
	    	
	    	for(String key : rb.keySet()){
	    		String value = rb.getString(key);
	    		try{
		    		//System.out.println(key +" : " + value);
	    			//map�� properties���Ͽ� �ִ� ��ü�� �����ؼ� �ִ´�.
		    		Action action = (Action)Class.forName(value).newInstance();
		    		map.put(key, action);
	    		
	    		}catch(Exception ex){
	    			ex.printStackTrace();
	    		}	
	    	}//for��
	    	
	    	//map�� ServletContext������ �����Ѵ�.
	    	context.setAttribute("map", map);
	    	
	    }
		
	}

}