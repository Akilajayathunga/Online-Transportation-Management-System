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


@WebServlet("/loginAdmin")
public class loginAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		admin ad = new admin();
		ad.setEmail(request.getParameter("email"));
		ad.setPassword(request.getParameter("password"));
		
		
		adminServices serv = new adminServices();
		boolean status = serv.validate(ad);
		
		
		if(status) {
			
			admin admin1 = serv.getone(ad);
			RequestDispatcher dis = request.getRequestDispatcher("AdminDashboard.jsp");
			request.setAttribute("admin12", admin1);
			dis.forward(request, response);
			
			
		}else {
			RequestDispatcher dis = request.getRequestDispatcher("adminlogin.jsp");
		    dis.forward(request, response); 
		}
		
		
	}

}
