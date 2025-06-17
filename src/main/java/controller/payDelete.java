package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Payment;
import services.PaymentServices;


@WebServlet("/payDelete")
public class payDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Payment pay = new Payment();
		pay.setId(Integer.parseInt(request.getParameter("id")));
		
		PaymentServices serv = new PaymentServices();
		serv.deletePay(pay);
	RequestDispatcher dispa = request.getRequestDispatcher("Home.jsp");
		
		dispa.forward(request, response);
		
		
	}

}
