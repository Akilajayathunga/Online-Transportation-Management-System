package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Driver;
import model.User;
import services.DriverServices;
import services.UserServices;

@WebServlet("/Driverlogin")
public class Driverlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		Driver d = new Driver();
		d.setEmail(request.getParameter("email"));
        d.setPassword(request.getParameter("password"));
        
           DriverServices serv = new DriverServices();
           boolean status = serv.validate(d);

        
        
        if(status) {
        	
        	Driver logindriv = serv.getone(d);
        	RequestDispatcher dis = request.getRequestDispatcher("DriverDashboard.jsp");
        	request.setAttribute("d2", logindriv);
        	dis.forward(request, response);
        	
        }else {
        	
        	RequestDispatcher dis = request.getRequestDispatcher("DriverLogin.jsp");
        	dis.forward(request, response);
        }
		
	}

}