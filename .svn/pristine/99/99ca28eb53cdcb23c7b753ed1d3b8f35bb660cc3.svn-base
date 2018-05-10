package com.zz624.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zz624.biz.GoodsBiz;
import com.zz624.biz.impl.GoodsBizImpl;
import com.zz624.entry.Goods;

public class UpdateServlet extends HttpServlet {
	private GoodsBiz gb=new GoodsBizImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String gid = request.getParameter("gid");
		int gpaster = Integer.parseInt(request.getParameter("gpaster"));
		int gisprice = Integer.parseInt(request.getParameter("gisprice"));
		String gimg = request.getParameter("gimg");
		String gname = request.getParameter("gname");
		double gprice = Double.parseDouble(request.getParameter("gprice"));
		String gmarks = request.getParameter("gmarks");
		Goods good=new Goods(gid, gname, gprice, gimg, gisprice, gpaster, gmarks);
		boolean b = gb.updateGood(good);
		if (b) {
			response.sendRedirect("BackstageServlet");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
