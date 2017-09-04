package wp.main.model.dto;

import java.io.Serializable;

public class UserDTO implements Serializable {
	private String user_id;
	private String upwd;
	private String uname;
	private String ubirth;
	private String uaddr;
	private String umobile;
	private String ugender;
	private String effect1;
	private String effect2;
	private String effect3;
	
	public UserDTO(){}
	
	public UserDTO(String user_id, String upwd, String uname, String ubirth, String uaddr, String umobile, String ugender, String effect1, String effect2, String effect3){
		this.user_id = user_id;
		this.upwd = upwd;
		this.uname = uname;
		this.ubirth = ubirth;
		this.uaddr = uaddr;
		this.umobile = umobile;
		this.ugender = ugender;
		this.effect1 = effect1;
		this.effect2 = effect2;
		this.effect3 = effect3;
	}
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUpwd() {
		return upwd;
	}
	public void setUpwd(String upwd) {
		this.upwd = upwd;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUbirth() {
		return ubirth;
	}
	public void setUbirth(String ubirth) {
		this.ubirth = ubirth;
	}
	public String getUaddr() {
		return uaddr;
	}
	public void setUaddr(String uaddr) {
		this.uaddr = uaddr;
	}
	public String getUmobile() {
		return umobile;
	}
	public void setUmobile(String umobile) {
		this.umobile = umobile;
	}
	public String getUgender() {
		return ugender;
	}
	public void setUgender(String ugender) {
		this.ugender = ugender;
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
	
	
	
}
