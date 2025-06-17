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


@WebServlet("/deletemsg")
public class deletemsg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public deletemsg() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Contactus cs = new Contactus();
		cs.setEmail(request.getParameter("email"));
		
		
		ContactusServices serv = new ContactusServices();
		serv.delet(cs);
		RequestDispatcher disp  = request.getRequestDispatcher("ReadData");
		disp.forward(request, response);
		
	}

}
