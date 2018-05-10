package com.zz624.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zz624.biz.ClientBiz;
import com.zz624.biz.impl.ClientBizImpl;
import com.zz624.entry.Client;

public class AddClientServlet extends HttpServlet {
	private ClientBiz cb=new ClientBizImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String msg=request.getParameter("msg");
		String[] arr=msg.split("\\*");
		/*for (String string : arr) {
			System.out.println(string);
		}*/
		Client client=new Client(arr[0], arr[1], Integer.parseInt(arr[2]), arr[3]);
		boolean b=cb.addClient(client);
		System.out.println(b);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
