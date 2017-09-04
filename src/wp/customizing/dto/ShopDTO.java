package wp.customizing.dto;

public class ShopDTO {
	private int sno = 0;
	private String user_id = null;
	private int amount = 0;
	private int charge = 0;
	private String pname = null;
	private String date = null;
	private int cpno = 0;
   
	public ShopDTO(int sno, String user_id, int amount, int charge, String pname,
			String date, int cpno){
		this.sno = sno;
		this.user_id=user_id;
		this.amount=amount;
		this.charge=charge;
		this.pname=pname;
		this.date=date;
		this.cpno=cpno;
	}

	public int getSno() {
		return sno;
	}

	public void setSno(int sno) {
		this.sno = sno;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getCharge() {
		return charge;
	}

	public void setCharge(int charge) {
		this.charge = charge;
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

	public int getCpno() {
		return cpno;
	}

	public void setCpno(int cpno) {
		this.cpno = cpno;
	}
	
}
