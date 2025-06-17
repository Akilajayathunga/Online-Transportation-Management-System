package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Ridebooking;
import services.RideServices;


@WebServlet("/singlRide")
public class singlRide extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    
		int rideId = Integer.parseInt(request.getParameter("id"));
	    RideServices serv = new RideServices();
	    Ridebooking rb = serv.getSingleById(rideId); // new method
	    request.setAttribute("li1", rb);
	    RequestDispatcher dis = request.getRequestDispatcher("singlride.jsp");
	    dis.forward(request, response);
	
	}



}
