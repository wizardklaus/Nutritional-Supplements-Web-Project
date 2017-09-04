package wp.main.model.dto;

import java.util.List;

public class EffectDTO {
	private List<String> eList;
	
	public EffectDTO(){}
	
	public EffectDTO(List<String> eList){
		this.eList = eList;
	}

	public List<String> geteList() {
		return eList;
	}

	public void seteList(List<String> eList) {
		this.eList = eList;
	}
	
}
