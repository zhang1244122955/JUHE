package com.zz624.biz;

import java.util.List;

import com.zz624.entry.Client;

public interface ClientBiz {
	//添加用户信息
	boolean addClient(Client client);
	//查询所有用户信息
	List<Client> selectAll(String username);
	//删除用户信息
	boolean deleteClient(int cid);
	//通过cid查询用户信息
	Client selectClient(int cid);
}
