package com.zz624.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.Out;

import com.zz624.biz.UserBiz;
import com.zz624.biz.impl.UserBizImpl;
import com.zz624.util.MD5util;

/**
 * Servlet implementation class Register
 */
public class RegisterServlet extends HttpServlet {
	private UserBiz userBiz;

	public RegisterServlet() {
		this.userBiz = new UserBizImpl();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		if(request.getParameter("code").equalsIgnoreCase((String) request.getSession().getAttribute("code"))){
		/*	System.out.println(request.getParameter("code"));
			System.out.println(request.getSession().getAttribute("code"));*/
			System.out.println("验证码正确！");
			String name = request.getParameter("username");
			String pwd = request.getParameter("pwd");
			String email = request.getParameter("email");
			String Cipherkey = MD5util.getPwd(pwd);
			int errorInfo = this.userBiz.rejister(name, Cipherkey, email);
			//response.sendRedirect("sss.jsp");
			
			if (errorInfo == 10002000) {
				// 插入跳转信息
				request.setAttribute("msg", name);
				// 跳转到指定页面（使用请求转发）
				request.getRequestDispatcher("succeed.jsp").forward(request, response);
				//response.sendRedirect("sss.jsp");
		}
		}else{
			System.out.println("验证码错误！");
		}
		
		
		/*
		 * String code = request.getParameter("code"); System.out.println(name +
		 * "#" + pwd + "#" + email + "#" + code);
		 * System.out.println(request.getSession().getAttribute("code"));
		 */

	
		/*
		 * if (bool) { PrintWriter pw=response.getWriter();
		 * pw.write("<html><head></head><body><h1>succeed</h1></body></html>");
		 * }else { PrintWriter pw=response.getWriter();
		 * pw.write("<html><head></head><body><h1>default</h1></body></html>");
		 * }
		 */
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
