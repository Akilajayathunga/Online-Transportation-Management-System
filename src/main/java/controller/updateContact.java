package controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Contactus;
import services.ContactusServices;

import java.io.IOException;
import java.sql.Date;


@WebServlet("/updateContact")
public class updateContact extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public updateContact() {
        super();
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Contactus cs = new Contactus();
		cs.setEmail(request.getParameter("email"));
		cs.setName(request.getParameter("name"));
	    cs.setMsg(request.getParameter("msg"));
	    String dateStr = request.getParameter("date");
	    Date date = Date.valueOf(dateStr);  // Parses into java.sql.Date
	    cs.setDate(date);
	    ContactusServices serv = new ContactusServices();
	    serv.Update(cs);
	    
	  
	    RequestDispatcher dis = request.getRequestDispatcher("ReadData");
		dis.forward(request, response);
	}

}
