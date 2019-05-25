package com.cts.controller;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;


@WebListener
public class InPatientListener implements ServletContextListener {

    
    public InPatientListener() {
        // TODO Auto-generated constructor stub
    }

	
    public void contextDestroyed(ServletContextEvent arg0)  { 
         // TODO Auto-generated method stub
    	System.out.println("Shuting DOWN!");
    }

	    public void contextInitialized(ServletContextEvent arg0)  { 
         // TODO Auto-generated method stub
	    	System.out.println("Starting UP!");
    }
	
}
