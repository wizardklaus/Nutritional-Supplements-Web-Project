package wp.customizing.dto;

public class IngdDTO {
	private String ingdName = null;
	private String effect1 = null;
	private String effect2 = null;
	private String effect3 = null;
	private int count=0;
	
	public IngdDTO(String ingdName, int count){
		this.ingdName = ingdName;
		this.count = count;
	}
	
	public IngdDTO(String ingdName, String effect1, int count){
		this.ingdName = ingdName;
		this.effect1 = effect1;
		this.count = count;
	}
	
	
	public IngdDTO(String ingdName, String effect1, String effect2, String effect3){
		this.ingdName = ingdName;
		this.effect1 = effect1;
		this.effect2 = effect2;
		this.effect3 = effect3;
	}
	
	public String getIngdName() {
		return ingdName;
	}
	public void setIngdName(String ingdName) {
		this.ingdName = ingdName;
	}
	public String getEffect1() {
		return effect1;
	}
	public void setEffect1(String effect1) {
		this.effect1 = effect1;
	}
	public String getEffect2() {
		return effect2;
	}
	public void setEffect2(String effect2) {
		this.effect2 = effect2;
	}
	public String getEffect3() {
		return effect3;
	}
	public void setEffect3(String effect3) {
		this.effect3 = effect3;
	}
	
	public int getCount(){
		return count;
	}
	
	public void setCount(int coutn){
		this.count=count;
	}
	
	@Override
	public String toString() {
		return getIngdName()+"|"+getEffect1() + " | " + getCount();
	}
	
}
