package com.zz624.entry;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class Car {
	// 存放商品 里面需要键值为商品id 值需要数量和商品的集合
	private Map<String, CarItem> map = new HashMap<>();

	// 添加购物项
	public void add(CarItem carItem) {
		// 如果购物车中有相同的商品则在购买数量上加1
		if (map.containsKey(carItem.getGood().getGid())) {
			// 先获得CarItem
			CarItem ci = map.get(carItem.getGood().getGid());
			ci.setNum(ci.getNum() + 1);
		} else {
			map.put(carItem.getGood().getGid(), carItem);
		}
	}

	// 数量加1
	public void addOne(String gid) {
		CarItem ci = map.get(gid);
		ci.setNum(ci.getNum() + 1);
	}

	// 数量减1
	public void reduceOne(String gid) {
		CarItem ci = map.get(gid);
		if(ci.getNum() == 1){
			map.remove(gid);
		}else{
			ci.setNum(ci.getNum() - 1);
		}
	}
	
	//删除某项
	public void delete(String gid){
		map.remove(gid);
	}
	
	//清空购物车
	public void clean(){
		map.clear();
	}
	
	//算总数
	public int getTotalNum(){
		int sum=0;
		Set<String> keySet=map.keySet();
		for(String k:keySet){
			CarItem ci=map.get(k);
			sum+=ci.getNum();
		}
		return sum;
	}
	
	//算合计
	public double getHj(){
		double sumMoney=0;
		Set<String> keySet=map.keySet();
		for(String k:keySet){
			CarItem ci=map.get(k);
			sumMoney+=ci.getTotalMoney();
		}
		return sumMoney;
	}

	public Map<String, CarItem> getMap() {
		return map;
	}

	public void setMap(Map<String, CarItem> map) {
		this.map = map;
	}
	
	
}
