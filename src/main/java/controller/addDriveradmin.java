package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Driver;
import model.admin;
import services.adminServices;

@WebServlet("/addDriveradmin")
public class addDriveradmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		Driver d = new Driver();
		d.setEmail(request.getParameter("email"));
		d.setName(request.getParameter("name"));
		d.setNo(request.getParameter("no"));
		d.setAge(request.getParameter("age"));
		d.setPassword(request.getParameter("pass"));

		adminServices serv = new adminServices();
		serv.addDriver(d);
		
		RequestDispatcher dispa = request.getRequestDispatcher("addDriveradmin.jsp");
		dispa.forward(request, response);
		
	}

}
