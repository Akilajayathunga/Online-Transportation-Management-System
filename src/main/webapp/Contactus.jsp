<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Send us Message</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Cuprum:wght@400;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
  <style>
    body {
      font-family: 'Cuprum', sans-serif;
    }
  </style>
</head>

<body class="bg-gray-900 text-yellow-400">

<header class="bg-gray-800 py-4 px-6 flex justify-between items-center shadow-md">
  <h1 class="text-2xl font-bold text-yellow-400 flex items-center">
    <i class="bi bi-car-front-fill text-3xl mr-2"></i> <!-- Add a car icon here -->
    GoRide
  </h1>
  <nav class="space-x-6">
    <a href="Home.jsp" class="text-gray-300 hover:text-yellow-400">Home</a>
    <a href="Aboutus.jsp" class="text-gray-300 hover:text-yellow-400">About</a>
    <a href="services.jsp" class="text-gray-300 hover:text-yellow-400">Services</a>
    <a href="UserLogin.jsp" class="text-gray-300 hover:text-yellow-400">Login</a>
  </nav>
</header>


  <!-- Header -->
  <div class="bg-gray-800 py-6">
    <div class="max-w-6xl mx-auto px-4 flex justify-between items-center">
      <h1 class="text-2xl font-bold">How can we help</h1>
      <div class="space-x-2">
        <button class="bg-yellow-400 text-gray-900 px-4 py-2 rounded hover:bg-yellow-300">Send a Message</button>
        <button class="bg-yellow-500 text-gray-900 px-4 py-2 rounded hover:bg-yellow-400">Give us a Call</button>
      </div>
    </div>
  </div>

  <!-- Form Section -->
  <section class="max-w-4xl mx-auto bg-gray-800 shadow-md mt-10 p-6 rounded-lg">
    <h2 class="text-2xl font-semibold mb-4 text-center">Send us Message!</h2>
    
    <form action="AddContactusServices" method="post">
      <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
        <input type="text" name="name" placeholder="Your Name" class="border border-yellow-400 p-3 rounded w-full mb-4 bg-gray-900 text-yellow-400" required />
        <input type="email" name="email" placeholder="Your Email" class="border border-yellow-400 p-3 rounded w-full mb-4 bg-gray-900 text-yellow-400" required />
      </div>
      <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
        <%
          java.time.LocalDate today = java.time.LocalDate.now();
        %>
        <input type="date" name="date" min="<%= today %>" class="border border-yellow-400 p-3 rounded w-full bg-gray-900 text-yellow-400" required />
      </div>
      <textarea maxlength="200" name="msg" placeholder="Your Message (max 200 words)" class="border border-yellow-400 p-3 rounded w-full h-32 resize-none mb-4 bg-gray-900 text-yellow-400" required></textarea>

      <div class="text-center">
        <button type="submit" class="bg-yellow-400 text-gray-900 px-6 py-2 rounded hover:bg-yellow-300">Submit</button>
      </div>
    </form>
  </section>

  <!-- Message Lookup -->
  <section class="max-w-4xl mx-auto bg-gray-800 shadow-md mt-10 p-6 rounded-lg">
    <h2 class="text-2xl font-semibold mb-4 text-center">See your Message!</h2>
    <form action="ReadData" method="post">
      <div class="flex flex-col items-center my-6">
        <div class="flex items-center gap-4 w-full max-w-md">
          <input type="text" name="email" placeholder="Enter your Email" class="border border-yellow-400 p-3 rounded w-full bg-gray-900 text-yellow-400" required />
          <button type="submit" class="bg-yellow-400 text-gray-900 px-4 py-2 rounded hover:bg-yellow-300">See</button>
        </div>
      </div>
    </form>
  </section>

  <!-- Contact Information -->
  <section class="max-w-5xl mx-auto mt-10 p-6 bg-gray-800 rounded-lg">
    <div class="flex flex-col md:flex-row gap-6">
      
      <!-- Telephone Info -->
      <div class="flex-1 bg-gray-700 p-6 rounded-lg">
        <div class="flex items-center space-x-2 mb-3 text-yellow-400 font-semibold">
          <i class="bi bi-telephone-fill text-xl"></i>
          <span>Telephone (24/7)</span>
        </div>
        <div class="space-y-1 text-yellow-300 font-medium">
          <div><strong>1-866-844-6783</strong><br><span class="text-sm">Toll-free North America</span></div>
          <div><strong>+1-604-777-4141</strong></div>
          <div><strong>+44-788-889-4166</strong><br><span class="text-sm">Local & International</span></div>
          <div><strong>0800-520-0171</strong><br><span class="text-sm">UK Freephone</span></div>
        </div>
        <div class="mt-4">
          <button class="flex items-center justify-center gap-2 border border-yellow-400 text-yellow-400 px-4 py-2 rounded hover:bg-gray-900">
            <i class="bi bi-whatsapp"></i> WhatsApp Us!
          </button>
        </div>
      </div>

      <!-- Emergency Info -->
      <div class="flex-1 bg-gray-700 p-6 rounded-lg">
        <div class="flex items-center space-x-2 mb-3 text-yellow-400 font-semibold">
          <i class="bi bi-exclamation-triangle-fill text-xl"></i>
          <span>Emergency</span>
        </div>
        <p class="text-yellow-300 mb-4">
          In the rare event of an emergency, please call your guide on the cell phone number provided with your booking confirmation. If you cannot reach your guide, or in the event of a dispute, please contact our emergency number.
        </p>
        <p class="text-lg font-bold text-center">+1 - 604 - 636 - 7058</p>
      </div>
    </div>
  </section>

</body>
</html>
