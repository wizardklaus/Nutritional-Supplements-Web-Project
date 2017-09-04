package wp.customizing.controller;

import java.util.Comparator;

import wp.customizing.dto.IngdDTO;

public class IngdComparator implements Comparator<IngdDTO>{
	@Override
	public int compare(IngdDTO first, IngdDTO second){
		int firstValue = first.getCount();
		int secondValue = second.getCount();
		
		if(firstValue>secondValue){
			return -1;
		}
		else if(firstValue<secondValue){
			return 1;
		}
		else{
			return 0;
		}
	}
}
