package com.zz624.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.security.ntlm.Client;
import com.zz624.biz.ClientBiz;
import com.zz624.biz.impl.ClientBizImpl;

public class DeleteClientServlet extends HttpServlet {
	private ClientBiz cb=new ClientBizImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int cid=Integer.valueOf(request.getParameter("cid"));
		boolean b=cb.deleteClient(cid);
		if (b) {
			response.sendRedirect("SelectClientServlet");
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
