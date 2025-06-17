package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;
import services.UserServices;


@WebServlet("/RegUser")
public class RegUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		 // Get parameters from the request
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        int age = Integer.parseInt(request.getParameter("age"));
        String contact = request.getParameter("contact");
        String address = request.getParameter("address");

        // Create and populate the model
        User passenger = new User();
        passenger.setName(name);
        passenger.setEmail(email);
        passenger.setPasswowrd(password);
        passenger.setAge(age);
        passenger.setNumber(contact);
        passenger.setAddress(address);

        // Use service layer to persist data
        UserServices service = new UserServices();
        service.addUser(passenger);

        // Redirect after successful registration
        response.sendRedirect("Home.jsp");
		
	}

}
