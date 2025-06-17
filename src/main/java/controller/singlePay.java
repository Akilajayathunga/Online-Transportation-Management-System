package controller;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import model.Payment;
import model.Ridebooking;
import services.PaymentServices;
import services.RideServices;

@WebServlet("/singlePay")
public class singlePay extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
    	
    	int rideId = Integer.parseInt(request.getParameter("id")); // <-- FIXED
       PaymentServices serv = new PaymentServices();
        Payment rb = serv.getSingel(rideId);

        request.setAttribute("li1", rb);
        RequestDispatcher dis = request.getRequestDispatcher("singlpay.jsp");
        dis.forward(request, response);
    }
}
