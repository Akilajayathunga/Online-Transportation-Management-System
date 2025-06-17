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

/**
 * Servlet implementation class singleDriver
 */
@WebServlet("/singleDriver")
public class singleDriver extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	Driver d = new Driver();
	d.setEmail(request.getParameter("email"));
	DriverServices serv =  new DriverServices();
	Driver d1 = serv.getone(d);
	RequestDispatcher dis = request.getRequestDispatcher("DriverDashboard.jsp");
	request.setAttribute("d2", d1);
	dis.forward(request, response);
	
	}

}
