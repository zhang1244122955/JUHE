package com.zz624.servlet;

import java.io.IOException;
import java.nio.channels.NetworkChannel;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zz624.biz.GoodsBiz;
import com.zz624.biz.impl.GoodsBizImpl;
import com.zz624.entry.Car;
import com.zz624.entry.CarItem;
import com.zz624.entry.Goods;

public class AddCar extends HttpServlet {
	private GoodsBiz biz=new GoodsBizImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//根据页面传来的gid找到对应的商品对象
		String gid=request.getParameter("gid");
		Goods good=biz.selectGood(gid);
		//创建car对象，先设置为null
		Car car=null;
		//先从session中获得car对象
		HttpSession session=request.getSession();
		car=(Car) session.getAttribute("car");
		//判断是否为空，如果为空，说明第一次添加购物车，就得创建新的car；否则说明session有car对象，直接使用
		if(car == null){
			car=new Car();
		}
		//创建caritem对象，代表要购买的商品对象+数量
		CarItem ci=new CarItem();
		ci.setGood(good);
		ci.setNum(1);
		//调用方法  将caritem添加到car中
		car.add(ci);
		//System.out.println("购物车："+car);
		//将存放了商品的一些信息的car对象，重新塞回到session里
		session.setAttribute("car", car);
		
		//返回到自身的界面
		request.getRequestDispatcher("DetailServlet?gid="+gid).forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
