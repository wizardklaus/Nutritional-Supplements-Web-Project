package wp.customizing.dto;

public class CartDTO {
	private int cno=0;
	private String user_id=null;
	private String pname = null;
	private String date = null;
	private int amount=0;
	
	public CartDTO(int cno, String user_id, String pname, String date, int amount){
		this.cno=cno;
		this.user_id=user_id;
		this.pname=pname;
		this.date=date;
		this.amount=amount;
	}

	public int getCno() {
		return cno;
	}

	public void setCno(int cno) {
		this.cno = cno;
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

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}
	
	
}
