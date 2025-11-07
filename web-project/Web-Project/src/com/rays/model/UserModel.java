package com.rays.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.rays.bean.UserBean;
import com.rays.util.JDBCDataSource;

public class UserModel {

	/* <---------Generate next primary key----------> */
	public int nextPk() throws SQLException {

		int pk = 0;

		Connection conn = JDBCDataSource.getConnection();
		PreparedStatement pstmt = conn.prepareStatement("select max(id) from st_user");
		ResultSet rs = pstmt.executeQuery();

		while (rs.next()) {
			pk = rs.getInt(1);
			System.out.println("maximum id = " + pk);
		}
		conn.close();
		return pk + 1;

	}
	/* <---------insert a record----------> */

	public void add(UserBean bean) throws Exception {

		Connection conn = JDBCDataSource.getConnection();
		PreparedStatement pstmt = conn.prepareStatement("insert into st_user values(?, ?, ?, ?, ?, ?)");
		int pk = nextPk();

		pstmt.setInt(1, pk);
		pstmt.setString(2, bean.getFirstName());
		pstmt.setString(3, bean.getLastName());
		pstmt.setString(4, bean.getLogin());
		pstmt.setString(5, bean.getPassword());
		pstmt.setDate(6, new java.sql.Date(bean.getDob().getTime()));

		int i = pstmt.executeUpdate();
		System.out.println("Data Inserted Successfully");
		conn.close();
	}

	/* <---------delete a record----------> */

	public void delete(int id) throws SQLException {

		Connection conn = JDBCDataSource.getConnection();
		PreparedStatement pstmt = conn.prepareStatement("delete from st_user where id =?");
		pstmt.setInt(1, id);

		int i = pstmt.executeUpdate();
		System.out.println("Data Deleted Successfilly " + i);
		conn.close();

	}
}
