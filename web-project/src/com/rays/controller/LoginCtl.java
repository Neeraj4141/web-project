package com.rays.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.rays.bean.UserBean;
import com.rays.model.UserModel;
import com.rays.util.DataValidator;

@WebServlet("/LoginCtl")
public class LoginCtl extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String op = request.getParameter("operation");
		System.out.println("op mila--->" + op);

		if (op != null) {
			if (!DataValidator.LoginValidation(request)) {
				System.out.println("Data validate nhi hai");
				RequestDispatcher rd = request.getRequestDispatcher("LoginView.jsp");
				rd.forward(request, response);
				return;
			}
		}

		super.service(request, response);
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("In doget method of loginctl");

		String op = request.getParameter("operation");
		if (op != null) {
			HttpSession session = request.getSession();
			session.invalidate(); // session.destroy
			request.setAttribute("SuccessMsg", "User LogOut Successfully");

		}
		RequestDispatcher rd = request.getRequestDispatcher("LoginView.jsp");
		rd.forward(request, response);

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		UserBean bean = new UserBean();
		UserModel model = new UserModel();
		HttpSession session = request.getSession();

		String login = request.getParameter("login");
		String password = request.getParameter("password");

		try {
			bean = model.authanticate(login, password);

			if (bean != null) {

				System.out.println("User Login Successfully");
				session.setAttribute("user", bean);
				response.sendRedirect("WelcomeCtl");
			} else {
				System.out.println("Invalid Login or Password");
				request.setAttribute("ErrorMsg", "Invalid Login or Password");
				RequestDispatcher rd = request.getRequestDispatcher("LoginView.jsp");
				rd.forward(request, response);
			}

		} catch (Exception e) {

		}
	}

}
