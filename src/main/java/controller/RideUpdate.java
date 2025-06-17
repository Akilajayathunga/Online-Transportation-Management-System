package controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Ridebooking;
import services.RideServices;

/**
 * Servlet implementation class RideUpdate
 */
@WebServlet("/RideUpdate")
public class RideUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
       Ridebooking rb = new Ridebooking();
       rb.setId(Integer.parseInt(request.getParameter("id")));
       rb.setEmail(request.getParameter("email"));
	   rb.setGoing(request.getParameter("going"));
	   rb.setLeaving(request.getParameter("leaving"));
	   rb.setVehicle(request.getParameter("vehicle"));
	   rb.setDate(request.getParameter("date"));  // Convert string to Date
       rb.setTime(request.getParameter("time"));
       
       RideServices serv = new RideServices();
       serv.updateride(rb);

       RequestDispatcher dispa  = request.getRequestDispatcher("RideUpdate.jsp");
       dispa.forward(request, response);
       	}

}
