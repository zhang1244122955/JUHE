package com.zz624.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.zz624.dao.UserDao;
import com.zz624.entry.User;
import com.zz624.util.DBUtils;

public class UserDaoImpl implements UserDao {

	@Override
	public boolean usernameIsExist(String username) {
		ResultSet rs = null;
		// 创建sql语句
		String sql = "select username,password from user where username=?";
		try {
			rs = DBUtils.query(sql, username);
			while (rs.next()) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return false;
	}

	@Override
	public boolean emailIsExist(String email) {
		ResultSet rs = null;
		// 创建sql语句
		String sql = "select username,password from user where email=?";
		try {
			rs = DBUtils.query(sql, email);
			while (rs.next()) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return false;
	}

	@Override
	public User selectUser(String username) {
		ResultSet rs = null;
		// 创建sql语句
		String sql = "select * from user where username=?";
		try {
			rs = DBUtils.query(sql, username);
			while (rs.next()) {
				return new User(rs.getString("username"),rs.getString("password"),rs.getString("email"),rs.getInt("status"),rs.getInt("power"),rs.getString("facetoken"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public void updateUser(User user) {
		// 创建sql语句
		String sql = "update user set password=?,email=?,status=?,power=?,facetoken=? where username=?";
		try {
			DBUtils.update(sql, user.getPassword(),user.getEmail(),user.getStatus(),user.getPower(),user.getFacetoken(),user.getUsername());
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 

	}

	@Override
	public void insertUser(String username, String password, String email) {
		// 创建sql语句
		String sql = "insert into user(username,password,email) values(?,?,?)";
		try {
			DBUtils.update(sql, username, password,email);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
