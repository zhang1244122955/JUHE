package com.zz624.entry;

public class User {
	// 用户名
	private String username;
	// 密码
	private String password;
	// 邮箱
	private String email;
	// 状态
	private int status;
	// 权限
	private int power;
	// 脸部信息
	private String facetoken;
	public User() {
		super();
	}

	public User(String username, String password, String email) {
		super();
		this.username = username;
		this.password = password;
		this.email = email; 
	}

	public User(String username, String password, String email, int status, int power, String facetoken) {
		super();
		this.username = username;
		this.password = password;
		this.email = email;
		this.status = status;
		this.power = power;
		this.facetoken = facetoken;
	}



	public String getFacetoken() {
		return facetoken;
	}

	public void setFacetoken(String facetoken) {
		this.facetoken = facetoken;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}



	public int getStatus() {
		return status;
	}



	public void setStatus(int status) {
		this.status = status;
	}



	public int getPower() {
		return power;
	}



	public void setPower(int power) {
		this.power = power;
	}

	@Override
	public String toString() {
		return "User [username=" + username + ", password=" + password + ", email=" + email + ", status=" + status
				+ ", power=" + power + ", facetoken=" + facetoken + "]";
	}





	

}
