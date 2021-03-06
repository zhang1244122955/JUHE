package com.zz624.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zz624.biz.ClientBiz;
import com.zz624.biz.impl.ClientBizImpl;
import com.zz624.entry.Client;

public class AddClientServlet extends HttpServlet {
	private ClientBiz cb=new ClientBizImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String msg=request.getParameter("msg");
		//System.out.println(msg);
		HttpSession session  = request.getSession();
		
		String u=(String)session.getAttribute("username");
		System.out.println(u);
		
		String[] arr=msg.split("\\*");
		Client client=new Client(arr[0], arr[1], arr[2], arr[3],u);
		boolean b=cb.addClient(client);
		if (b) {
			client.setAddress("收货地址："+arr[0]);
			client.setcName("收货人姓名："+arr[1]);
			client.setPostCode("邮编："+arr[2]);
			client.setPhone("手机："+arr[3]);
			request.setAttribute("client",client);
			
			request.getRequestDispatcher("order.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
