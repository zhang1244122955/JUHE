package com.zz624.biz.impl;

import java.util.List;

import com.zz624.biz.GoodsBiz;
import com.zz624.dao.GoodsDao;
import com.zz624.dao.impl.GoodsDaoImpl;
import com.zz624.entry.Goods;
import com.zz624.util.PageBean;

public class GoodsBizImpl implements GoodsBiz {
	private GoodsDao gd=new GoodsDaoImpl();
	@Override
	public int selectGoodsAll() {
		return gd.selectGoods().size();
	}
	
	@Override
	public PageBean selectGoods(int currentPage,int pageSize) {
		PageBean pageBean=new PageBean();
		//页数相关的数据
		pageBean.setCurrentPage(currentPage);
		pageBean.setPageSize(pageSize);
		pageBean.setTotalSize(selectGoodsAll());
		pageBean.setTotalPage(pageBean.getTotalPage());
		//list集合
		pageBean.setDate(gd.selectGoods(currentPage, pageSize));
		return pageBean;		
	}
	
	@Override
	public Goods selectGood(String gid) {
		Goods goods=gd.selectGoods(gid);
		return goods;
	}

	@Override
	public boolean updateGood(Goods goods) {
		int i = gd.updateGoods(goods);
		if (i>0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean insertGood(Goods goods) {
		int i = gd.insertGoods(goods);
		if (i>0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean deleteGood(String gid) {
		int i = gd.deleteGoods(gid);
		if (i>0) {
			return true;
		}
		return false;
	}

}
