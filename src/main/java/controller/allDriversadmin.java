package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Driver;
import services.DriverServices;

@WebServlet("/allDriversadmin")
public class allDriversadmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		DriverServices serv = new DriverServices();
		ArrayList<Driver> dr = serv.getAllDrivers();
		request.setAttribute("dlist", dr);
		
		RequestDispatcher dis = request.getRequestDispatcher("adminAllDrivers.jsp");
		dis.forward(request, response);
		
	}

}
