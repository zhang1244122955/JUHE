package com.zz624.entry;

import java.io.Serializable;

public class Client implements Serializable{
	private int cid;
	private String address;
	private String cName;
	private String postCode;
	private String phone;
	private String username;
	public Client() {
		// TODO Auto-generated constructor stub
	}
	
	public Client(String address, String cName, String postCode, String phone,String username) {
		super();
		this.address = address;
		this.cName = cName;
		this.postCode = postCode;
		this.phone = phone;
		this.username=username;
	}
	
	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	
	public String getPostCode() {
		return postCode;
	}

	public void setPostCode(String postCode) {
		this.postCode = postCode;
	}

	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
	
}
