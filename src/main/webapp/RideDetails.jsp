<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>My Ride Bookings</title>

  <!-- Tailwind CSS -->
  <script src="https://cdn.tailwindcss.com"></script>

  <!-- Bootstrap Icons -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
</head>
<body class="text-yellow-300 min-h-screen p-6 bg-cover bg-center bg-no-repeat" >

<header class="bg-gray-800 py-4 px-6 flex justify-between items-center shadow-md w-full fixed top-0 left-0 z-10">
  <h1 class="text-2xl font-bold text-yellow-400 flex items-center">
    <i class="bi bi-car-front-fill text-3xl mr-2"></i> <!-- Add a car icon here -->
    GoRide
  </h1>
  <nav class="space-x-6">
    <a href="Home.jsp" class="text-gray-300 hover:text-yellow-400">Home</a>
    <a href="Aboutus.jsp" class="text-gray-300 hover:text-yellow-400">About</a>s
    <a href="services.jsp" class="text-gray-300 hover:text-yellow-400">Services</a>
    <a href="UserLogin.jsp" class="text-gray-300 hover:text-yellow-400">Login</a>
  </nav>
</header>


<div class="max-w-5xl mx-auto pt-24">
    <h1 class="text-3xl font-bold text-center mb-8 text-yellow-400">🚗 My Ride Bookings</h1>

    <div class="space-y-6">
      <c:forEach var="ride" items="${ridelist}">
        <div class="bg-gray-800 rounded-xl p-4 shadow-lg hover:bg-gray-700 transition duration-300">
          <div class="grid grid-cols-1 md:grid-cols-2 gap-4 items-center">

            <div class="space-y-1">
              <p><i class="bi bi-envelope-fill text-yellow-400 me-2"></i><strong>ID :</strong> ${ride.id}</p>
              <p><i class="bi bi-envelope-fill text-yellow-400 me-2"></i><strong>Email:</strong> ${ride.email}</p>               
              <p><i class="bi bi-geo-alt-fill text-yellow-400 me-2"></i><strong>From:</strong> ${ride.leaving}</p>
              <p><i class="bi bi-flag-fill text-yellow-400 me-2"></i><strong>To:</strong> ${ride.going}</p>
              <p><i class="bi bi-car-front-fill text-yellow-400 me-2"></i><strong>Vehicle:</strong> ${ride.vehicle}</p>
              <p><i class="bi bi-calendar-event text-yellow-400 me-2"></i><strong>Date:</strong> ${ride.date}</p>
              <p><i class="bi bi-clock text-yellow-400 me-2"></i><strong>Time:</strong> ${ride.time}</p>
            </div>

            <div class="text-right space-x-3">
              <!-- Edit Ride -->
              <form action="singlRide" method="post" class="inline-block">
                  <input type="hidden" name="id" value="${ride.id}">
                 <button type="submit" class="text-yellow-300 hover:text-yellow-500 text-xl" title="Edit Ride">
                  <i class="bi bi-pencil-square"></i>
                </button>
              </form>

              <!-- Cancel Ride -->
              <form action="CancelRide" method="post" class="inline-block" onsubmit="return confirm('Are you sure you want to cancel this ride?');">
                <input type="hidden" name="id" value="${ride.id}">
                 <input type="hidden" name="email" value="${ride.email}">
                <button type="submit" class="text-red-500 hover:text-red-400 text-xl" title="Cancel Ride">
                  <i class="bi bi-trash-fill"></i>
                </button>
              </form>
            </div>
             
             <form action = "PaymentUI.jsp" method = "post">
              <input type="hidden" name="id" value="${ride.id}"> 
                <input type="hidden" name="email" value="${ride.email}">
                <input type="hidden" name="leaving" value="${ride.leaving}">
                <input type="hidden" name="going" value="${ride.going}">
                <input type="hidden" name="vehicle" value="${ride.vehicle}">
                <input type="hidden" name="date" value="${ride.date}">
                <input type="hidden" name="time" value="${ride.time}">
        <button type = "submit" class="w-full bg-yellow-400 hover:bg-yellow-300 text-black py-3 rounded-xl font-semibold shadow">
     Pay Here !
    </button>
</form>
             
          </div>
        </div>
      </c:forEach>
    </div>


  </div>

</body>
</html>
