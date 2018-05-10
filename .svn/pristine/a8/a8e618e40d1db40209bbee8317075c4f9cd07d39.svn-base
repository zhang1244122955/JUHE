package com.zz624.biz.impl;

import java.util.List;

import com.zz624.biz.GoodsBiz;
import com.zz624.dao.GoodsDao;
import com.zz624.dao.impl.GoodsDaoImpl;
import com.zz624.entry.Goods;

public class GoodsBizImpl implements GoodsBiz {
	private GoodsDao gd=new GoodsDaoImpl();
	@Override
	public List<Goods> selectGoodsAll() {
		return gd.selectGoods();
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
