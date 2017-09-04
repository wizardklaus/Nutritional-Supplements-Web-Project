package wp.category.dto;

public class CartDTO {
	private String user_id=null;
	private String pname=null;
	private int amount=0;
	
	public CartDTO(String user_id, String pname, int amount){
		this.user_id = user_id;
		this.pname = pname;
		this.amount=amount;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return getUser_id()+getPname()+getAmount();
	}
	
}
