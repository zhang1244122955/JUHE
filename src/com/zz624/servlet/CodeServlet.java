package com.zz624.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zz624.util.CodeUtils;
import com.zz624.util.MailUtils;

/**
 * Servlet implementation class CodeServlet
 */
public class CodeServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String code = CodeUtils.getCode();
		System.out.println(code);
		MailUtils.send(request.getParameter("email"), code);
		HttpSession session = request.getSession();
		session.setAttribute("code", code);
		session.setMaxInactiveInterval(60*15);
		
		Cookie cookie = new Cookie("JSESSIONID", session.getId());
		cookie.setMaxAge(60*15);
		//2 利用响应 发送自定义的Cookie
        response.addCookie(cookie);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
