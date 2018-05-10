package com.zz624.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zz624.biz.GoodsBiz;
import com.zz624.biz.impl.GoodsBizImpl;
import com.zz624.entry.Goods;

public class DetailServlet extends HttpServlet {
	private GoodsBiz gb=new GoodsBizImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//列表页传过来的数据
		String gid=request.getParameter("gid");
		Goods goods=gb.selectGood(gid);
		if (goods!=null) {
			int gisprice=goods.getGisprice();
			String gimg=goods.getGimg();
			String gname=goods.getGname();
			int gpaster=0;
			double gprice=goods.getGprice();
			String gmarks=goods.getGmarks();
			Goods good=new Goods(gid, gname, gprice, gimg, gisprice, gpaster, gmarks);
			//将数据发送给product_details.jsp
			request.setAttribute("good", good);
			//System.out.println(good.getGname());
			//携带数据 跳转页面
			request.getRequestDispatcher("product_details.jsp").forward(request, response);
		} else {
			
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
