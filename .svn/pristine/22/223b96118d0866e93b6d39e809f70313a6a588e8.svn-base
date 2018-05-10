package com.zz624.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zz624.biz.UserBiz;
import com.zz624.biz.impl.UserBizImpl;
import com.zz624.util.MD5util;



/**
 * Servlet implementation class Login
 */
public class LoginServlet extends HttpServlet {
	private UserBiz userBiz;
	
    public LoginServlet() {
        this.userBiz=new UserBizImpl();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//获取登录时的用户名密码
		String name=request.getParameter("username");
		String pwd=request.getParameter("pwd");
		//对密码进行加密
		String jiamiPwd= MD5util.getPwd(pwd);
		System.out.println(name);
		System.out.println(name+pwd+jiamiPwd);
		
		//获取session对象
		HttpSession session=request.getSession();
		session.setAttribute("account", name);
		//给session设置生命周期
		session.setMaxInactiveInterval(100000);
		
		//进行登录操作
		int errorInfo=this.userBiz.login(name, jiamiPwd);
		System.out.println(errorInfo);

			PrintWriter pw=response.getWriter();
			pw.write(" "+errorInfo);

		
		
		/*if (bool) {
			PrintWriter pw=response.getWriter();
			pw.write("<html><head></head><body><h1>succeed</h1></body></html>");
		}else {
			PrintWriter pw=response.getWriter();
			pw.write("<html><head></head><body><h1>default</h1></body></html>");
		}*/
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
