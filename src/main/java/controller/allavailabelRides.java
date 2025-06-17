package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Ridebooking;
import services.RideServices;

/**
 * Servlet implementation class allavailabelRides
 */
@WebServlet("/allavailabelRides")
public class allavailabelRides extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  RideServices serv = new RideServices();
		  ArrayList<Ridebooking> rb = serv.getAllRides1();
		  request.setAttribute("ridelist",  rb);
		  
		  RequestDispatcher dispa = request.getRequestDispatcher("DriverAllrides.jsp");
	      dispa.forward(request, response);
	}

}
