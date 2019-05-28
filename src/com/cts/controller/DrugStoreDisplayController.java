package com.cts.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cts.bean.DrugStore;
import com.cts.service.DrugRecordsServiceImpl;
import com.cts.service.DrugStoreRecordsService;

@WebServlet("/DrugStoreDisplayController")
public class DrugStoreDisplayController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   

	DrugStoreRecordsService drugservice;
   
	
	public void init(ServletConfig config) throws ServletException {
		drugservice=new DrugRecordsServiceImpl();  
	}

	
	public void destroy() {
		// TODO Auto-generated method stub
	}

	

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String drugname=request.getParameter("drug_name");	
		System.out.println("inside controller " + drugname);
		
		
		
			List<DrugStore> dx;
			try {
				dx = drugservice.displayDrug(drugname);
				request.setAttribute("drug", dx);
				RequestDispatcher rd=request.getRequestDispatcher("Display_drug_details.jsp");
				rd.forward(request, response);
				
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			
			
			
		
	}

}
