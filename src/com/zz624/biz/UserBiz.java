package com.zz624.biz;

public interface UserBiz {
	//登录
	int login(String username,String password);
	//注册
	int rejister(String username,String password,String email);
}
