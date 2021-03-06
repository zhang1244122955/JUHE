package com.zz624.biz.impl;

import java.util.List;

import com.zz624.biz.ClientBiz;
import com.zz624.dao.ClientDao;
import com.zz624.dao.impl.ClientDaoImpl;
import com.zz624.entry.Client;

public class ClientBizImpl implements ClientBiz {
	private ClientDao cd=new ClientDaoImpl();

	@Override
	public boolean addClient(Client client) {
		int i=cd.addClient(client);
		if (i>0) {
			return true;
		}
		return false;
	}

	@Override
	public List<Client> selectAll(String username) {
		return cd.selectAll(username);
	}

	@Override
	public boolean deleteClient(int cid) {
		int i=cd.deleteClient(cid);
		if (i>0) {
			return true;
		}
		return false;
	}

	@Override
	public Client selectClient(int cid) {
		return cd.selectClient(cid);
	}

}
