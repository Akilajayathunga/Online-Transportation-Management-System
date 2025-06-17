package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;
import services.UserServices;

@WebServlet("/UserLogin")
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		User us = new User();
		us.setEmail(request.getParameter("email"));
        us.setPasswowrd(request.getParameter("password"));
        
        UserServices serv = new UserServices();
        boolean status = serv.validate(us);
        
        
        if(status) {
        	
        	User loginuser = serv.getone(us);
        	RequestDispatcher dis = request.getRequestDispatcher("UserDashboard.jsp");
        	request.setAttribute("User12", loginuser);
        	dis.forward(request, response);
        }else {
        	
        	RequestDispatcher dis = request.getRequestDispatcher("UserLogin.jsp");
        	dis.forward(request, response);
        }
		
	}

}
