package com.cts.controller;

import java.io.IOException;

import java.sql.Date;
import java.text.SimpleDateFormat;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cts.bean.DrugStore;
import com.cts.service.DrugRecordsServiceImpl;
import com.cts.service.DrugStoreRecordsService;

@WebServlet("/DrugStoreController")
public class DrugStoreController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	DrugStoreRecordsService drugservice;
   
	
	public void init(ServletConfig config) throws ServletException {
		drugservice=new DrugRecordsServiceImpl();  
	}

	
	public void destroy() {
		// TODO Auto-generated method stub
	}

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
   		DrugStore drug=new DrugStore();
   		SimpleDateFormat df=new SimpleDateFormat("dd-MM-yyyy");
		df.setLenient(false);
		
		drug.setDrugname(request.getParameter("dname"));		
		drug.setIn_stock(Integer.parseInt(request.getParameter("stock")));
		
		drug.setExp_date1(Date.valueOf(request.getParameter("edate1")));
		drug.setExp_date2(Date.valueOf(request.getParameter("edate2")));
		
		
		System.out.println(drug.getDrugname());
		System.out.println(drug.getIn_stock());
		System.out.println(drug.getExp_date1());
		System.out.println(drug.getExp_date2());
		
		System.out.println(drugservice.addRecords(drug));
		
		response.sendRedirect("stock_details.jsp");
			
	}

}
