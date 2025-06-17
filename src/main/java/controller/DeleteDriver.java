package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Driver;
import services.DriverServices;

@WebServlet("/DeleteDriver")
public class DeleteDriver extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		Driver  dr = new Driver();
		dr.setEmail(request.getParameter("email"));
		
		DriverServices serv = new DriverServices();
		serv.deleteDriver(dr);
		
		RequestDispatcher dis = request.getRequestDispatcher("DriverLogin.jsp");
		dis.forward(request, response);
		
		
		
	}

}
