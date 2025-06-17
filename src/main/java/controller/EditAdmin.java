package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.admin;
import services.adminServices;

@WebServlet("/EditAdmin")
public class EditAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		admin ad = new admin();
		ad.setName(request.getParameter("name"));
		ad.setEmail(request.getParameter("email"));
		ad.setAge(Integer.parseInt(request.getParameter("age")));	
		
		adminServices serv = new adminServices();
		serv.updateAdmin(ad);
		
		RequestDispatcher dis = request.getRequestDispatcher("EditAdmin.jsp");
		dis.forward(request, response);
	}

}
