package wp.category.controller;

import wp.category.controller.Action;
import wp.category.controller.ProductListAction;
import wp.category.controller.ProductViewAction;

public class ActionFactory {
	private static ActionFactory instance=new ActionFactory();
	
	private ActionFactory(){
		super();
	}
	
	public static ActionFactory getInstance(){
		return instance;
	}
	
	public Action getAction(String command){
		Action action=null;
		System.out.println("ActionFactory :"+command);
		
		if(command.equals("product_list")){
			action=new ProductListAction();
		} else if (command.equals("product_view")){
			action=new ProductViewAction();
		} else if (command.equals("product_cart")){
			action = new ProductCartAction();
		}
		
		return action;
	}
}