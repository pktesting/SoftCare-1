package com.cts.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cts.bean.Login;
import com.cts.service.LoginRecords;
import com.cts.service.LoginRecordsServiceImpl;
import com.cts.service.RegistrationRecordsServiceImpl;

@WebServlet("/loginRegisterController")
public class loginRegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	LoginRecords lr;

	public void init(ServletConfig config) throws ServletException {
		lr = new LoginRecordsServiceImpl();
	}

	public loginRegisterController() {
		super();

	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		Login login = new Login();
		login.setName(request.getParameter("name"));
		login.setPass(request.getParameter("pass"));
		int a = 10;
		if (lr.checkLogin(login)) {
			HttpSession session = request.getSession();
			session.setAttribute("session_name", a);
			RequestDispatcher dispatcher = request.getRequestDispatcher("session.jsp");
	        try {
				dispatcher.forward(request, response);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println("login Successfull");
		} else {
			System.out.println("error");
		}
	}

	@Override
	public void destroy() {
		super.destroy();
	}
}
