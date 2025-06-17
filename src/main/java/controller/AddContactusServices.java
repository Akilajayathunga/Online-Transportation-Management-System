package controller;



import model.Contactus;
import services.ContactusServices;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AddContactusServices")
public class AddContactusServices extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public AddContactusServices() {
        super();
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Read form values
				String email = request.getParameter("email");
				String name = request.getParameter("name");
				String country = request.getParameter("country");
				String msg = request.getParameter("msg");

				// Set today's date
				String dateStr = request.getParameter("date"); // format: YYYY-MM-DD
				Date date = Date.valueOf(dateStr);

				// Set model
				Contactus contact = new Contactus();
				contact.setEmail(email);
				contact.setName(name);
				contact.setMsg(msg);
				contact.setDate(date);

				// Save
				ContactusServices service = new ContactusServices();
				service.addMsg(contact);

			    response.sendRedirect("Contactus.jsp");

	}

}
