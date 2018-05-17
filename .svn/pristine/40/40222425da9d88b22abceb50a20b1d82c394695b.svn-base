package com.zz624.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zz624.biz.BankBiz;
import com.zz624.biz.impl.BankBizImpl;
import com.zz624.entry.Bank;
import com.zz624.util.MD5util;

public class SelectBankServlet extends HttpServlet {
	private BankBiz bb=new BankBizImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String bankid=request.getParameter("bankid");
		String bpwd=request.getParameter("bpwd");
		//对密码进行加密
		String jiamiPwd= MD5util.getPwd(bpwd);
		PrintWriter pw=response.getWriter();
		System.out.println(bankid+"--"+jiamiPwd);
		List<Bank> list=bb.selectBank();
		int i=0;
		for (Bank b : list) {
			if (b.getBankid().equals(bankid)&&b.getBpwd().equals(jiamiPwd)) {
				pw.write("支付成功！");
				System.out.println("支付成功！");
				i++;
			}
		}
		if (i==0) {
			pw.write("支付失败！");
			System.out.println("支付失败！");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
