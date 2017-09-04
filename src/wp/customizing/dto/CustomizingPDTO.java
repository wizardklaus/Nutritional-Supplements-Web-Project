package wp.customizing.dto;

public class CustomizingPDTO {
	private int cpno=0;
	private String cpname = null;
	private String user_id = null;
	private String ingdName1 = null;
	private String ingdName2 = null;
	private String ingdName3 = null;
	private String ingdName4 = null;
	private String ingdName5 = null;
	private String ingdName6 = null;
	private String ingdName7 = null;
	private String ingdName8 = null;
	private String ingdName9 = null;
	private String ingdName10 = null;
	private int price = 0;
	private int amount=0;
	private int shopFlag=0;
	
	public CustomizingPDTO(int cpno, String cpname, String user_id, String ingdName1, String ingdName2,
			String ingdName3, String ingdName4 , String ingdName5, String ingdName6 , String ingdName7, String ingdName8, String ingdName9,
			String ingdName10, int price, int amount, int shopFlag){
		this.cpno=cpno;
		this.cpname = cpname;
		this.user_id = user_id;
		this.ingdName1 = ingdName1;
		this.ingdName2 = ingdName2;
		this.ingdName3 = ingdName3;
		this.ingdName4 = ingdName4;
		this.ingdName5 = ingdName5;
		this.ingdName6 = ingdName6;
		this.ingdName7 = ingdName7;
		this.ingdName8 = ingdName8;
		this.ingdName9 = ingdName9;
		this.ingdName10 = ingdName10;
		this.price = price;
		this.amount=amount;
		this.shopFlag=shopFlag;
	}

	public int getCpno() {
		return cpno;
	}

	public void setCpno(int cpno) {
		this.cpno = cpno;
	}

	public String getCpname() {
		return cpname;
	}

	public void setCpname(String cpname) {
		this.cpname = cpname;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getIngdName1() {
		return ingdName1;
	}

	public void setIngdName1(String ingdName1) {
		this.ingdName1 = ingdName1;
	}

	public String getIngdName2() {
		return ingdName2;
	}

	public void setIngdName2(String ingdName2) {
		this.ingdName2 = ingdName2;
	}

	public String getIngdName3() {
		return ingdName3;
	}

	public void setIngdName3(String ingdName3) {
		this.ingdName3 = ingdName3;
	}

	public String getIngdName4() {
		return ingdName4;
	}

	public void setIngdName4(String ingdName4) {
		this.ingdName4 = ingdName4;
	}

	public String getIngdName5() {
		return ingdName5;
	}

	public void setIngdName5(String ingdName5) {
		this.ingdName5 = ingdName5;
	}

	public String getIngdName6() {
		return ingdName6;
	}

	public void setIngdName6(String ingdName6) {
		this.ingdName6 = ingdName6;
	}

	public String getIngdName7() {
		return ingdName7;
	}

	public void setIngdName7(String ingdName7) {
		this.ingdName7 = ingdName7;
	}

	public String getIngdName8() {
		return ingdName8;
	}

	public void setIngdName8(String ingdName8) {
		this.ingdName8 = ingdName8;
	}

	public String getIngdName9() {
		return ingdName9;
	}

	public void setIngdName9(String ingdName9) {
		this.ingdName9 = ingdName9;
	}

	public String getIngdName10() {
		return ingdName10;
	}

	public void setIngdName10(String ingdName10) {
		this.ingdName10 = ingdName10;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}
	
	public int getShopFlag(){
		return shopFlag;
	}
	
	public void setShopFlag(){
		this.shopFlag=shopFlag;
	}
	
}
