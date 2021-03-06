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
import com.zz624.util.PageBean;

public class ShowServlet extends HttpServlet {
	private GoodsBiz gb=new GoodsBizImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int page=0;
		if (request.getParameter("page")==null) {
			page=1;
		}else {
			page=Integer.valueOf(request.getParameter("page"));
		}
		PageBean pageBean=gb.selectGoods(page, 25);
		request.setAttribute("pageBean", pageBean);
		request.getRequestDispatcher("commodity.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
