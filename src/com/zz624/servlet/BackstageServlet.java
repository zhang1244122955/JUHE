package com.zz624.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zz624.biz.GoodsBiz;
import com.zz624.biz.impl.GoodsBizImpl;
import com.zz624.entry.Goods;

public class BackstageServlet extends HttpServlet {
	private GoodsBiz gb=new GoodsBizImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Goods> list = gb.selectGoodsAll();
		request.setAttribute("list", list);
		request.getRequestDispatcher("backstage.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
