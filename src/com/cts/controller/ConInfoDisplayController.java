package com.cts.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cts.bean.ConInfo;
import com.cts.service.ConInfoService;


@WebServlet("/ConInfoDisplayController")
public class ConInfoDisplayController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	ConInfoService cinfService;
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		
		cinfService = new ConInfoService();
	}

	
	public void destroy() {
		// TODO Auto-generated method stub
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		ConInfo c = cinfService.displayCon(request.getParameter("Opno")); 
		System.out.println("Inside Controller: " + c);
		request.setAttribute("dispo", c);
		
		RequestDispatcher rd = request.getRequestDispatcher("con_dispo.jsp");
		rd.forward(request, response);
		
		
	}

}
