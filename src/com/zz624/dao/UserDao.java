package com.zz624.dao;

import com.zz624.entry.User;

public interface UserDao {
	//检查用户名是否存在
	boolean usernameIsExist(String username);
	//检查邮箱是否存在
	boolean emailIsExist(String email);
	//查询用户
	User selectUser(String username);
	//更新用户
	void updateUser(User user);
	//插入用户
	void insertUser(String username,String password,String email);
	
}
