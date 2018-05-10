package com.zz624.entry;

public class Goods {
	//商品id
	private String gid;
	//商品名称
	private String gname;
	//商品价格
	private double gprice;
	//图片路径
	private String gimg;
	//是有有价
	private int gisprice;
	//是否企业专用
	private int gpaster;
	//简介
	private String gmarks;
	public Goods() {
		super();
	}
	
	
	public Goods(String gname, double gprice, String gimg) {
		super();
		this.gname = gname;
		this.gprice = gprice;
		this.gimg = gimg;
	}


	public Goods(String gname, double gprice, String gimg, int gisprice, int gpaster, String gmarks) {
		super();
		this.gname = gname;
		this.gprice = gprice;
		this.gimg = gimg;
		this.gisprice = gisprice;
		this.gpaster = gpaster;
		this.gmarks = gmarks;
	}


	public Goods(String gid, String gname, double gprice, String gimg, int gisprice, int gpaster, String gmarks) {
		super();
		this.gid = gid;
		this.gname = gname;
		this.gprice = gprice;
		this.gimg = gimg;
		this.gisprice = gisprice;
		this.gpaster = gpaster;
		this.gmarks = gmarks;
	}


	public String getGid() {
		return gid;
	}


	public void setGid(String gid) {
		this.gid = gid;
	}


	public String getGname() {
		return gname;
	}


	public void setGname(String gname) {
		this.gname = gname;
	}


	public double getGprice() {
		return gprice;
	}


	public void setGprice(double gprice) {
		this.gprice = gprice;
	}


	public String getGimg() {
		return gimg;
	}


	public void setGimg(String gimg) {
		this.gimg = gimg;
	}


	public int getGisprice() {
		return gisprice;
	}


	public void setGisprice(int gisprice) {
		this.gisprice = gisprice;
	}


	public int getGpaster() {
		return gpaster;
	}


	public void setGpaster(int gpaster) {
		this.gpaster = gpaster;
	}


	public String getGmarks() {
		return gmarks;
	}


	public void setGmarks(String gmarks) {
		this.gmarks = gmarks;
	}


	@Override
	public String toString() {
		return "Goods [gid=" + gid + ", gname=" + gname + ", gprice=" + gprice + ", gimg=" + gimg + ", gisprice="
				+ gisprice + ", gpaster=" + gpaster + ", gmarks=" + gmarks + "]";
	}
	
}
