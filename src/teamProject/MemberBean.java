package teamProject;


public class MemberBean {
	String id;
	String pwd;
	String name;
	String email;
	String phoneNum;
	
	public MemberBean() {	}
	
	public MemberBean(String id, String pwd) {	
		this.id = id;
		this.pwd =pwd;
	}
	
	public MemberBean(String pwd, String name, String email, String phoneNum) {
		this.pwd = pwd;
		this.name = name;
		this.email = email;
		this.phoneNum = phoneNum;
	}
	
	public MemberBean(String id, String pwd, String name, String email, String phoneNum) {
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.email = email;
		this.phoneNum = phoneNum;
	}
	
	public String getId() {return id;}
	public void setId(String id) {this.id = id;}
	
	public String getPwd() {return pwd;}
	public void setPwd(String pwd) {this.pwd = pwd;}
	
	public String getName() {return name;}
	public void setName(String name) {this.name = name;}
	
	public String getEmail() {return email;}
	public void setEmail(String email) {this.email = email;}
	
	public String getPhoneNum() {return phoneNum;}
	public void setPhoneNum(String phoneNum) {this.phoneNum = phoneNum;}
}
