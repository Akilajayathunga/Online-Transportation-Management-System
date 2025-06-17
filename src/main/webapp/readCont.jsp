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

<body class="bg-gray-900 text-white">

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
  <div class="bg-yellow-400 text-gray-900 py-6">
    <div class="max-w-6xl mx-auto px-4 flex justify-between items-center">
      <h1 class="text-2xl font-bold">How can we help</h1>
      <div class="space-x-2">
        <button class="bg-gray-900 text-yellow-400 px-4 py-2 rounded hover:bg-gray-800">Send a Message</button>
        <button class="bg-gray-900 text-yellow-400 px-4 py-2 rounded hover:bg-gray-800">Give us a Call</button>
      </div>
    </div>
  </div>

  <!-- Message Display Section -->
  <section class="max-w-4xl mx-auto bg-gray-800 shadow mt-8 p-6 rounded-lg">
    <h3 class="text-xl font-semibold text-center mb-4 text-yellow-400">Recent Messages</h3>
    
    <c:set var="cus" value="${msg1}" />

    <div class="grid grid-cols-1 gap-4">
      <input type="text" class="bg-gray-700 text-white p-3 rounded w-full" name="name" value="${cus.name}" placeholder="Name" readonly>
      <input type="text" class="bg-gray-700 text-white p-3 rounded w-full" name="email" value="${cus.email}" placeholder="Email" readonly>
      <input type="text" class="bg-gray-700 text-white p-3 rounded w-full" name="date" value="${cus.date}" placeholder="Date" readonly>
      <textarea class="bg-gray-700 text-white p-3 rounded w-full" name="msg" rows="4" placeholder="Message" readonly>${cus.msg}</textarea>
    </div>
  </section>

  <!-- Edit Button -->
  <form action="updateCont.jsp" method="post" class="max-w-4xl mx-auto px-4 mt-4">
    <input type="hidden" name="name" value="${cus.name}">
    <input type="hidden" name="email" value="${cus.email}">
    <input type="hidden" name="date" value="${cus.date}">
    <input type="hidden" name="msg" value="${cus.msg}">
    
    <button type="submit" class="flex items-center bg-yellow-400 text-gray-900 px-6 py-3 rounded hover:bg-yellow-500">
      <i class="fas fa-edit mr-2"></i>
      Edit Message
    </button>
  </form>

  <!-- Back Button -->
  <div class="max-w-4xl mx-auto px-4 mt-4">
    <a href="Contactus.jsp" class="flex items-center gap-2 bg-yellow-400 text-gray-900 px-6 py-3 rounded hover:bg-yellow-500 shadow-md">
      <i class="fas fa-address-book text-lg"></i>
      Back to Contact Us
    </a>
  </div>

  <!-- Delete Button -->
  <form action="deletemsg" method="post" class="max-w-4xl mx-auto px-4 mt-4">
    <input type="hidden" name="email" value="${cus.email}">
    <button type="submit" class="flex items-center bg-red-600 text-white px-6 py-3 rounded hover:bg-red-700">
      <i class="fas fa-trash-alt mr-2"></i>
      Delete Message!
    </button>
  </form>

  <!-- Contact Information -->
  <section class="max-w-5xl mx-auto mt-10 p-6 bg-gray-800 rounded-lg">
    <div class="flex flex-col md:flex-row gap-6 text-white">
      
      <!-- Telephone Info -->
      <div class="flex-1 bg-gray-700 p-6 rounded-lg">
        <div class="flex items-center space-x-2 mb-3 text-yellow-400 font-semibold">
          <i class="bi bi-telephone-fill text-xl"></i>
          <span>Telephone (24/7)</span>
        </div>
        <div class="space-y-1 font-medium">
          <div><strong>1-866-844-6783</strong><br><span class="text-sm text-gray-300">Toll-free North America</span></div>
          <div><strong>+1-604-777-4141</strong></div>
          <div><strong>+44-788-889-4166</strong><br><span class="text-sm text-gray-300">Local & International</span></div>
          <div><strong>0800-520-0171</strong><br><span class="text-sm text-gray-300">UK Freephone</span></div>
        </div>
        <div class="mt-4">
          <button class="flex items-center justify-center gap-2 border border-yellow-400 text-yellow-400 px-4 py-2 rounded hover:bg-gray-600">
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
        <p class="mb-4 text-gray-200">
          In the rare event of an emergency, please call your guide on the cell phone number provided with your booking confirmation. If you cannot reach your guide, or in the event of a dispute, please contact our emergency number.
        </p>
        <p class="text-lg font-bold text-center text-white">+1 - 604 - 636 - 7058</p>
      </div>
    </div>
  </section>

</body>
</html>
