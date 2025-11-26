package com.rays.util;

import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;

public class DataValidator {

	public static boolean signUpValidation(HttpServletRequest request) {
		Boolean isValid = true;

		if (request.getParameter("firstName") == "") {
			request.setAttribute("firstName", "firstName is required");
			System.out.println("FirstName is required");
			isValid = false;

		} else if ((request.getParameter("firstName").endsWith("1234567890"))) {
			request.setAttribute("firstName", "Charachter contains only");
			isValid = false;
		}
		if (request.getParameter("lastName") == "") {
			request.setAttribute("lastName", "LastName is required");
			System.out.println("lastName is required");
			isValid = false;

		} else if ((request.getParameter("lastName").endsWith("1234567890"))) {
			request.setAttribute("lastName", "Charachter contains only");
			isValid = false;
		}
		if (request.getParameter("login") == "") {
			request.setAttribute("login", "login is required");
			System.out.println("login is required");
			isValid = false;

		} else if (!request.getParameter("login").endsWith("@gmail.com")) {
			request.setAttribute("login", "invalid login format");
			isValid = false;
		}

		if (request.getParameter("password") == "") {
			request.setAttribute("password", "password is required");
			System.out.println("Password is required");
			isValid = false;

		} else if (!(request.getParameter("password").length() >= 8
				|| request.getParameter("password").length() <= 12)) {
			request.setAttribute("password", "Your password must be between 8 and 12 characters long.");
			System.out.println("password is required");
			isValid = false;
		}
		if (request.getParameter("dob") == "") {
			request.setAttribute("dob", "dob is required");
			System.out.println("dob is required");
			isValid = false;

		} else if (!(request.getParameter("dob") == "")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

			try {
				Date dob = sdf.parse(request.getParameter("dob"));
				Date now = new Date();
				int age = now.getYear() - dob.getYear();
				if (!(age >= 18 && age <= 60)) {
					request.setAttribute("dob", "you are not eligible for this website");
					isValid = false;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return isValid;
	}

	public static boolean LoginValidation(HttpServletRequest request) {
		Boolean isValid = true;

		if (request.getParameter("login") == "") {
			request.setAttribute("login", "Login is required");
			System.out.println("login is required");
			isValid = false;

		}
		if (request.getParameter("password") == "") {
			request.setAttribute("password", "password is required");
			System.out.println("password is required");
			isValid = false;

		}

		return isValid;

	}

}
