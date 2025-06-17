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

@WebServlet("/CancelRide")
public class CancelRide extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	    String email = request.getParameter("email");

		Ridebooking rb = new Ridebooking();
		rb.setId(Integer.parseInt(request.getParameter("id")));
		
		RideServices serv = new RideServices();
		serv.deleteRide(rb);
		
		 request.setAttribute("email", email);

		RequestDispatcher dispa = request.getRequestDispatcher("ViewAllRides");
		
		dispa.forward(request, response);
	
	}

}
