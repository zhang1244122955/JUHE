package com.zz624.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.sun.org.apache.regexp.internal.recompile;
import com.zz624.dao.BankDao;
import com.zz624.entry.Bank;
import com.zz624.util.DBUtils;

public class BankDaoImpl implements BankDao {
	@Override
	public List<Bank> selectBank() {
		List<Bank> list=new ArrayList<Bank>();
		ResultSet rs =null;
		String sql="select * from bank";
		try {
			rs=DBUtils.query(sql);
			while(rs.next()){
				list.add(new Bank(rs.getString("bankid"), rs.getString("bpwd")));
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

}
