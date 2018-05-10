package com.zz624.biz;

import java.util.List;

import com.zz624.entry.Goods;

public interface GoodsBiz {
	//查询所有商品
	List<Goods> selectGoodsAll();
	//根据id查询单个商品
	Goods selectGood(String gid);
	//商品信息修改
	boolean updateGood(Goods goods);
	//商品添加
	boolean insertGood(Goods goods);
	//商品删除 
	boolean deleteGood(String gid);
}
