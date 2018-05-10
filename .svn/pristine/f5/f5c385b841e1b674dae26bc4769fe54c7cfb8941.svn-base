package com.zz624.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSONObject;
import com.zz624.biz.GoodsBiz;
import com.zz624.biz.impl.GoodsBizImpl;
import com.zz624.entry.Goods;

public class FindServlet extends HttpServlet {
	private GoodsBiz gb=new GoodsBizImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//列表页传过来的数据
		String gid = request.getParameter("gid");
		System.out.println(gid);
		Goods goods=gb.selectGood(gid);
		/*//将数据发送给backstage.jsp
		request.setAttribute("goods", goods);
		//携带数据 跳转页面
		request.getRequestDispatcher("backstage.jsp").forward(request, response);*/
		String json=JSONObject.toJSONString(goods);
		System.out.println(json);
		//设置响应数据为JSON
		response.setContentType("application/json");
		PrintWriter pw=	response.getWriter();
		pw.write(json);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
