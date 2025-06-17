package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;
import services.UserServices;


@WebServlet("/allUsersAdmin")
public class allUsersAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		UserServices serv = new UserServices();
		ArrayList<User> us = serv.getAllUsers();
		request.setAttribute("uslist", us);
		
		  RequestDispatcher dispa = request.getRequestDispatcher("adminAllusers.jsp");
	      dispa.forward(request, response);
	      System.out.println("ela");
		
	}

}
