package com.zz624.biz.impl;

import com.zz624.biz.ClientBiz;
import com.zz624.dao.ClientDao;
import com.zz624.dao.impl.ClientDaoImpl;
import com.zz624.entry.Client;

public class ClientBizImpl implements ClientBiz {
	private ClientDao cd=new ClientDaoImpl();
	public ClientBizImpl() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public boolean addClient(Client client) {
		int i=cd.addClient(client);
		if (i>0) {
			return true;
		}
		return false;
	}

}
