package com.zz624.dao;

import java.util.List;

import com.zz624.entry.Goods;

public interface GoodsDao {
	//查询所有商品
	List<Goods> selectGoods();
	//查询每个页面的商品
	List<Goods> selectGoods(int currentPage,int pageSize);
	//查询单个商品
	Goods selectGoods(String gid);
	//商品信息修改
	int updateGoods(Goods goods);
	//商品添加
	int insertGoods(Goods goods);
	//商品删除 
	int deleteGoods(String gid);
}
