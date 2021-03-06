package com.zz624.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.zz624.dao.GoodsDao;
import com.zz624.entry.Goods;
import com.zz624.util.DBUtils;

public class GoodsDaoImpl implements GoodsDao {

	@Override
	public List<Goods> selectGoods() {
		String sql="select * from goods";
		List<Goods> list = new ArrayList<>();
		try {
			ResultSet rs = DBUtils.query(sql);
			while(rs.next()){
				Goods goods=new Goods();
				goods.setGid(rs.getString("gid"));
				goods.setGpaster(rs.getInt("gpaster"));
				goods.setGisprice(rs.getInt("gisprice"));
				goods.setGimg(rs.getString("gimg"));
				goods.setGname(rs.getString("gname"));
				goods.setGprice(rs.getDouble("gprice"));
				goods.setGmarks(rs.getString("gmarks"));
				list.add(goods);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	@Override
	public List<Goods> selectGoods(int currentPage,int pageSize) {
		String sql="select * from goods limit ?,?";
		List<Goods> list = new ArrayList<>();
		Object [] params={(currentPage-1)*pageSize,pageSize};
		try {
			ResultSet rs = DBUtils.query(sql,params);
			while(rs.next()){
				Goods goods=new Goods();
				goods.setGid(rs.getString("gid"));
				goods.setGpaster(rs.getInt("gpaster"));
				goods.setGisprice(rs.getInt("gisprice"));
				goods.setGimg(rs.getString("gimg"));
				goods.setGname(rs.getString("gname"));
				goods.setGprice(rs.getDouble("gprice"));
				goods.setGmarks(rs.getString("gmarks"));
				list.add(goods);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public Goods selectGoods(String gid) {
		String sql="select * from goods where gid=?";
		ResultSet rs=null;
		try {
			rs=DBUtils.query(sql, gid);
			while(rs.next()){
				Goods goods=new Goods();
				goods.setGid(gid);
				goods.setGpaster(rs.getInt("gpaster"));
				goods.setGisprice(rs.getInt("gisprice"));
				goods.setGimg(rs.getString("gimg"));
				goods.setGname(rs.getString("gname"));
				goods.setGprice(rs.getDouble("gprice"));
				goods.setGmarks(rs.getString("gmarks"));
				return goods;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int updateGoods(Goods goods) {
		String sql="update goods set gpaster=?,gisprice=?,gimg=?,gname=?,gprice=?,gmarks=? where gid=?";
		Object [] params={goods.getGpaster(),goods.getGisprice(),goods.getGimg(),goods.getGname(),goods.getGprice(),goods.getGmarks(),goods.getGid()};
		int i=0;
		try {
			i = DBUtils.update(sql, params);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}

	@Override
	public int insertGoods(Goods goods) {
		String sql="insert into goods (gpaster,gisprice,gimg,gname,gprice,gmarks) values(?,?,?,?,?,?)";
		Object [] params={goods.getGpaster(),goods.getGisprice(),goods.getGimg(),goods.getGname(),goods.getGprice(),goods.getGmarks()};
		int i=0;
		try {
			i = DBUtils.update(sql, params);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}

	@Override
	public int deleteGoods(String gid) {
		String sql="delete from goods where gid=?";
		Object [] params={gid};
		int i=0;
		try {
			i = DBUtils.update(sql, params);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}

}
