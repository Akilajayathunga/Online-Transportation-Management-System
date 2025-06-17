package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Ridebooking;
import services.RideServices;


@WebServlet("/AddRide")
public class AddRide extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		Ridebooking rb = new Ridebooking();
		
		//rb.setId(Integer.parseInt(request.getParameter("id")));
		rb.setEmail(request.getParameter("email"));
		rb.setLeaving(request.getParameter("leaving"));
        rb.setGoing(request.getParameter("going")); 
        rb.setVehicle(request.getParameter("selectedVehicle"));
        rb.setDate(request.getParameter("date"));
	    rb.setTime(request.getParameter("time"));
	    
	    
		RideServices serv = new RideServices();
	    serv.addRide(rb);
		
		response.sendRedirect("RideBooking.jsp");
	}

}
