package com.zz624.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBUtils {
	private static Connection conn=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	private static PreparedStatement pstmt=null;
	public static final String DRIVER="com.mysql.jdbc.Driver";
	public static final String DBURL="jdbc:mysql://123.206.52.239:3306/juhe";
	public static final String USERNAME="juheproject";
	public static final String PASSWORD="juhe";
	//静态代码块
	static {
		//加载驱动
		try {
			Class.forName(DRIVER);
			conn=DriverManager.getConnection(DBURL, USERNAME, PASSWORD);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	//增删改
	public static int update(String sql) throws SQLException{
		stmt=conn.createStatement();
		return stmt.executeUpdate(sql);
	}
	//预编译的增删改
	public static int update(String sql,Object...arr) throws SQLException{
		//获取预编译对象
		pstmt=conn.prepareStatement(sql);
		//设置？的值  利用  arr.length
		for (int i = 0; i < arr.length; i++) {
			pstmt.setObject(i+1, arr[i]);
		}
		//执行sql对象
		return pstmt.executeUpdate();
	}
	//查询
	public static ResultSet query(String sql) throws SQLException{
		stmt=conn.createStatement();
		rs=stmt.executeQuery(sql);
		return rs;
	}
	//预编译查询
	public static ResultSet query(String sql,Object...arr) throws SQLException{
		//获取预编译对象
		pstmt=conn.prepareStatement(sql);
		//设置？的值  利用  arr.length
		for (int i = 0; i < arr.length; i++) {
			pstmt.setObject(i+1, arr[i]);
		}
		rs=pstmt.executeQuery();
		return rs;
	}
	//设置关闭资源的方法
	public static void closeAll() throws SQLException{
		if(rs!=null) rs.close();
		if(pstmt!=null) pstmt.close();
		if(stmt!=null) stmt.close();
		if(conn!=null) conn.close();
	}
	
}
