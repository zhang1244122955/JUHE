package com.zz624.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zz624.biz.ClientBiz;
import com.zz624.biz.impl.ClientBizImpl;
import com.zz624.entry.Client;

public class GetClientServlet extends HttpServlet {
	private ClientBiz cb=new ClientBizImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int cid=Integer.valueOf(request.getParameter("cid"));
		Client client=cb.selectClient(cid);
		if (client!=null) {
			request.setAttribute("client", client);
			request.getRequestDispatcher("order.jsp").forward(request, response);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
