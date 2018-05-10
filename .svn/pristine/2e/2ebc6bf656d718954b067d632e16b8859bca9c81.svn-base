package com.zz624.dao.impl;

import java.sql.SQLException;

import com.zz624.dao.ClientDao;
import com.zz624.entry.Client;
import com.zz624.util.DBUtils;

public class ClientDaoImpl implements ClientDao {

	public ClientDaoImpl() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public int addClient(Client client) {
		String sql="insert into client(address,cName,postCode,phone) values(?,?,?,?)";
		int i=0;
		try {
			//System.out.println(client.getAddress()+"--"+ client.getcName()+"--"+client.getPostCode()+"--"+client.getPhone());
			i=DBUtils.update(sql, client.getAddress(), client.getcName(), client.getPostCode(), client.getPhone());
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return i;
	}

}
