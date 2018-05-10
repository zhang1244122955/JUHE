package com.zz624.servlet;

import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zz624.biz.UserBiz;
import com.zz624.biz.impl.UserBizImpl;
import com.zz624.util.MD5util;

/**
 * Servlet implementation class LoginFaceServlet
 */
public class LoginFaceServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String data = request.getParameter("data");
		
		//对密码进行加密
		String jiamiPwd= MD5util.getPwd(password);
		
		// 切掉字符串没用部分
		String base64 = data.substring(22);

		UserBiz uBiz = new UserBizImpl();
		int code = 0;
		if(password == ""){
			//调用人脸登录方法获得结果
			code = uBiz.login_face(username, base64);
		}else{
			//通过密码开通人脸识别
			code = uBiz.login_face(username,jiamiPwd, base64);
		}
		
		//TODO将用户名写入session

		OutputStream outputStream = response.getOutputStream();
		String str = "" + code;
		outputStream.write(str.getBytes());
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
