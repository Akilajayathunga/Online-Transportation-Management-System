package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Payment;
import services.PaymentServices;
import services.RideServices;


@WebServlet("/AddPayment")
public class AddPayment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Payment p = new Payment();
		p.setId(Integer.parseInt(request.getParameter("id")));
		p.setCardNumber(request.getParameter("cardNumber"));
		p.setCvv(request.getParameter("cvv"));
		p.setExpiry(request.getParameter("expiry"));
	   p.setPayment(request.getParameter("fare"));	
	   
	   PaymentServices serv = new PaymentServices();
	    serv.addPay(p);
		
	    request.setAttribute("id", p.getId());
	    request.getRequestDispatcher("singlePay").forward(request, response);

		
		
	}

}
