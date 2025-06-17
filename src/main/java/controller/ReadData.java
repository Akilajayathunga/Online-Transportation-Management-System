package controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Contactus;
import services.ContactusServices;

import java.io.IOException;


@WebServlet("/ReadData")
public class ReadData extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ReadData() {
        super();
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Contactus cus = new Contactus();
		cus.setEmail(request.getParameter("email"));
		ContactusServices serv = new ContactusServices();
		Contactus msg = serv.getone(cus);
		RequestDispatcher dis = request.getRequestDispatcher("readCont.jsp");
		request.setAttribute("msg1", msg);
		dis.forward(request, response);
	}

}
