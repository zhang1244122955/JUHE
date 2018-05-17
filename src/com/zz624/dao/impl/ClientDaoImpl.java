package com.zz624.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.zz624.dao.ClientDao;
import com.zz624.entry.Client;
import com.zz624.entry.Goods;
import com.zz624.util.DBUtils;

public class ClientDaoImpl implements ClientDao {

	public ClientDaoImpl() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public int addClient(Client client) {
		String sql="insert into client(address,cName,postCode,phone,username) values(?,?,?,?,?)";
		int i=0;
		try {
			//System.out.println(client.getAddress()+"--"+ client.getcName()+"--"+client.getPostCode()+"--"+client.getPhone());
			i=DBUtils.update(sql, client.getAddress(), client.getcName(), client.getPostCode(), client.getPhone(),client.getUsername());
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return i;
	}

	@Override
	public List<Client> selectAll(String username) {
		List<Client> list = new ArrayList<Client>();
		ResultSet rs =null;
		String sql="select * from client where username=?";
		try {
			rs=DBUtils.query(sql,username);
			while(rs.next()){
				Client client=new Client();
				client.setCid(rs.getInt("cid"));
				client.setAddress(rs.getString("address"));
				client.setcName(rs.getString("cName"));
				client.setPostCode(rs.getString("postCode"));
				client.setPhone(rs.getString("phone"));
				list.add(client);
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public int deleteClient(int cid) {
		String sql="delete from client where cid=?";
		int i=0;
		try {
			i=DBUtils.update(sql, cid);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}

	@Override
	public Client selectClient(int cid) {
		List<Client> list = new ArrayList<Client>();
		ResultSet rs =null;
		String sql="select * from client where cid=?";
		try {
			rs=DBUtils.query(sql, cid);
			while(rs.next()){
				Client client=new Client();
				client.setAddress("收货地址："+rs.getString("address"));
				client.setcName("收货人姓名："+rs.getString("cName"));
				client.setPostCode("邮编："+rs.getString("postCode"));
				client.setPhone("手机："+rs.getString("phone"));
				return client;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

}
