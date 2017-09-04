package wp.customizing.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/customizing")
public class CustomizingFrontController extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String command= request.getParameter("command");
		System.out.println("command : " + command);
		
		CustomizingAction cusAction;
		
		if(command==null){
			command="";
		}
		
		if(command.equals("effectResult")){
			cusAction = new CustomizingEffectAction();
			cusAction.execute(request, response);
		}
		else if(command.equals("ingredientResult")){
			cusAction = new CustomizingIngredientAction();
			cusAction.execute(request, response);
		}
		else if(command.equals("shopCheck")){
			cusAction = new CustomizingShopAction();
			cusAction.execute(request, response);
		}
		else if(command.equals("cartCheck")){
			cusAction = new CustomizingCartAction();
			cusAction.execute(request, response);
		}
		else if(command.equals("showIngd")){
			System.out.println("asdf");
			cusAction = new ShowIngredientAction();
			cusAction.execute(request, response);
		}
		else{
			//¾øÀ½
		}
	}
}
