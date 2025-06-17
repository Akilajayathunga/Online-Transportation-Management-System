<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Ride Details</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <!-- Tailwind CSS -->
  <script src="https://cdn.tailwindcss.com"></script>

  <!-- Bootstrap Icons -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">

  <style>
    body {
      background-image: url('img/ridebg.jpg');
      background-size: cover;
      background-position: center;
    }
    .bg-overlay {
      background-color: rgba(0, 0, 0, 0.7);
      backdrop-filter: blur(4px);
    }
  </style>
</head>

<body class="min-h-screen flex items-center justify-center p-6 text-yellow-300">

  <div class="bg-overlay p-8 rounded-2xl max-w-2xl w-full shadow-2xl">
<h2 class="text-3xl font-bold mb-6 text-center text-yellow-400">
  <i class="bi bi-car-front-fill me-2"></i> Ride Booking Details
</h2>
    <c:set var="ride" value="${li1}" />
    <div class="space-y-4 text-lg">
    <p><i class="bi bi-envelope-fill text-yellow-400 me-2"></i><strong>ID:</strong> ${ride.id}</p>
      <p><i class="bi bi-envelope-fill text-yellow-400 me-2"></i><strong>Email:</strong> ${ride.email}</p>
      <p><i class="bi bi-geo-alt-fill text-yellow-400 me-2"></i><strong>From:</strong> ${ride.leaving}</p>
      <p><i class="bi bi-flag-fill text-yellow-400 me-2"></i><strong>To:</strong> ${ride.going}</p>
      <p><i class="bi bi-car-front-fill text-yellow-400 me-2"></i><strong>Vehicle:</strong> ${ride.vehicle}</p>
      <p><i class="bi bi-calendar-event text-yellow-400 me-2"></i><strong>Date:</strong> ${ride.date}</p>
      <p><i class="bi bi-clock text-yellow-400 me-2"></i><strong>Time:</strong> ${ride.time}</p>
    </div>

    <div class="flex justify-between mt-8">
      <!-- Update Button -->
      <form action="RideUpdate.jsp" method="post">
                 <input type="hidden" name="id" value="${ride.id}"> 
                <input type="hidden" name="email" value="${ride.email}">
                <input type="hidden" name="leaving" value="${ride.leaving}">
                <input type="hidden" name="going" value="${ride.going}">
                <input type="hidden" name="vehicle" value="${ride.vehicle}">
                <input type="hidden" name="date" value="${ride.date}">
                <input type="hidden" name="time" value="${ride.time}">
        <button type="submit" class="bg-yellow-400 text-black px-5 py-2 rounded-xl font-semibold hover:bg-yellow-500 transition">
          <i class="bi bi-pencil-square me-1"></i> Update
        </button>
      </form>

      <!-- Back Button -->
      <a href="UserDashboard.jsp" class="bg-gray-700 text-yellow-300 px-5 py-2 rounded-xl font-semibold hover:bg-gray-600 transition">
        <i class="bi bi-arrow-left-circle me-1"></i> Back to Dashboard
      </a>
    </div>
  </div>

</body>
</html>
