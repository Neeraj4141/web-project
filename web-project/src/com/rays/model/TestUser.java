package com.rays.model;

import java.text.SimpleDateFormat;

import com.rays.bean.UserBean;

public class TestUser {

	public static void main(String[] args) throws Exception {
		//testAdd();
	}

	private static void testAdd() throws Exception {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

		UserModel model = new UserModel();
		UserBean bean = new UserBean();
		bean.setFirstName("adi");
		bean.setLastName("sharma");
		bean.setLogin("neeraj@gmail.com");
		bean.setDob(sdf.parse("2002-03-21"));
		bean.setPassword("pass123");
		model.add(bean);
	}
}
