<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="java.util.Random" %>
<%
    Random rand = new Random();
    double fare = 500 + (rand.nextDouble() * (10000 - 500));
    DecimalFormat df = new DecimalFormat("#,##0.00");
    String fareFormatted = df.format(fare);
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Ride Booking Payment</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
</head>
<body class="bg-gray-900 text-white min-h-screen flex items-center justify-center p-6">
  <div class="bg-gray-800 rounded-2xl shadow-2xl w-full max-w-5xl grid grid-cols-1 md:grid-cols-2 gap-6 p-6 border border-yellow-400">
    
    <!-- Payment Section -->
    <form action="AddPayment" method="post" class="space-y-6">
      <h2 class="text-2xl font-bold border-b border-yellow-400 pb-2">Payment</h2>

      <div>
        <label class="block text-yellow-400 font-semibold mb-2">Pay With:</label>
        <div class="flex items-center gap-6">
          <label class="flex items-center gap-2 cursor-pointer">
            <input type="radio" name="payment" value="Visa" class="accent-yellow-400" checked>
            <i class="bi bi-credit-card text-yellow-400 text-xl"></i>
            <span>Visa</span>
          </label>
          <label class="flex items-center gap-2 cursor-pointer">
            <input type="radio" name="payment" value="Master" class="accent-yellow-400">
            <i class="bi bi-credit-card-2-front text-yellow-400 text-xl"></i>
            <span>Master</span>
          </label>
          <label class="flex items-center gap-2 cursor-pointer">
            <input type="radio" name="payment" value="DialogViu" class="accent-yellow-400">
            <i class="bi bi-phone text-yellow-400 text-xl"></i>
            <span>Dialog Viu</span>
          </label>
        </div>
      </div>

      <div class="space-y-4">
      <input type  = "hidden" name = "id" value = "${param.id }">
        <input type="text" name="cardNumber" max = "10" min = "10" placeholder="Card Number" required
               class="w-full bg-gray-700 border border-yellow-400 rounded px-4 py-2 placeholder-white/70 focus:outline-none">
        <div class="grid grid-cols-2 gap-4">
          <input type="text" name="expiry" placeholder="MM/YY" required
                 class="bg-gray-700 border border-yellow-400 rounded px-4 py-2 placeholder-white/70 focus:outline-none">
          <input type="text" name="cvv" placeholder="CVV" max = "3" min = "3" required
                 class="bg-gray-700 border border-yellow-400 rounded px-4 py-2 placeholder-white/70 focus:outline-none">
        </div>
        <input type="text" name="fare" value="<%= fareFormatted %>" readonly
               class="w-full bg-gray-700 border border-yellow-400 rounded px-4 py-2 text-yellow-400 font-bold">

        <label class="flex items-center gap-2 text-sm">
          <input type="checkbox" class="accent-yellow-400">
          <span>Save card details</span>
        </label>
      </div>


      <button type="submit" class="w-full bg-yellow-400 hover:bg-yellow-300 text-black font-bold py-3 rounded-xl shadow">
        <i class="bi bi-shield-lock-fill mr-2"></i> Pay Rs. <%= fareFormatted %>
      </button>

      <p class="text-xs text-gray-400 mt-2">
        Your personal data will be used to process your order, support your experience, and for other purposes described in our privacy policy.
      </p>
    </form>

    <!-- Ride Summary Panel -->
    <div class="md:pl-6 border-t md:border-t-0 md:border-l border-yellow-400 pt-6 md:pt-0">
      <h2 class="text-2xl font-bold border-b border-yellow-400 pb-2 mb-4">Ride Details</h2>

      <div class="space-y-2 text-sm text-white">
        <p><i class="bi bi-hash text-yellow-400"></i> <strong>Booking ID:</strong> ${param.id}</p>
        <p><i class="bi bi-envelope-fill text-yellow-400"></i> <strong>Email:</strong> ${param.email}</p>
        <p><i class="bi bi-geo-alt-fill text-yellow-400"></i> <strong>Leaving from:</strong> ${param.leaving}</p>
        <p><i class="bi bi-flag-fill text-yellow-400"></i> <strong>Going to:</strong> ${param.going}</p>
        <p><i class="bi bi-car-front-fill text-yellow-400"></i> <strong>Vehicle:</strong> ${param.vehicle}</p>
        <p><i class="bi bi-calendar-date text-yellow-400"></i> <strong>Date:</strong> ${param.date}</p>
        <p><i class="bi bi-clock-fill text-yellow-400"></i> <strong>Time:</strong> ${param.time}</p>
      </div>

      <hr class="my-4 border-yellow-400">

      <h3 class="font-semibold mb-2 text-yellow-400">Fare Summary</h3>
      <div class="flex justify-between text-sm">
        <span>Base Fare</span>
        <span>Rs. <%= fareFormatted %></span>
      </div>
      <div class="flex justify-between text-sm">
        <span>Service Fee</span>
        <span>Rs. 0.00</span>
      </div>
      <div class="flex justify-between font-bold text-lg mt-2 border-t border-yellow-400 pt-2">
        <span>Total</span>
        <span>Rs. <%= fareFormatted %></span>
      </div>
      
      
      
      <form action="singlePay" method = "Post">
      <input type = "hidden" name = "id" value = "${param.id}">
       <button type="submit" class="w-full bg-yellow-400 hover:bg-yellow-300 text-black font-bold py-3 rounded-xl shadow">
        <i class="bi bi-shield-lock-fill mr-2"></i> See Card Details
      </button>
      </form>
    </div>
  </div>
</body>
</html>
