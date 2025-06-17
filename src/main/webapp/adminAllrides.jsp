<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Ride Dashboard</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
</head>
<body class="bg-gray-900 text-white min-h-screen flex flex-col">

<header class="bg-gray-800 py-4 px-6 flex justify-between items-center shadow-md w-full fixed top-0 left-0 z-10">
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
  <!-- Main Content -->
  <main class="flex-1 p-6">
    <section class="max-w-6xl mx-auto">
      <h2 class="text-3xl font-bold text-yellow-400 mb-6">All Rides</h2>
      
      <div class="overflow-x-auto rounded-2xl shadow-2xl bg-gray-800 ring-1 ring-gray-700">
        <table class="min-w-full text-sm text-left">
          <thead class="bg-gray-700 text-yellow-300 uppercase tracking-wider text-xs">
            <tr>
              <th class="px-6 py-4">Ride ID</th>
              <th class="px-6 py-4">User Email </th>
              <th class="px-6 py-4">Pickup</th>
              <th class="px-6 py-4">Destination</th>
              <th class="px-6 py-4">Vehicle Type</th>
            </tr>
          </thead>
          <tbody class="divide-y divide-gray-700">
          <c:forEach var="ride" items="${ridelist}">
            
            <tr class="hover:bg-gray-700 transition">
              <td class="px-6 py-4">${ride.id}</td>
              <td class="px-6 py-4">${ride.email}</td>
              <td class="px-6 py-4">${ride.leaving}</td>
              <td class="px-6 py-4">${ride.going}</td>
              <td class="px-6 py-4">${ride.vehicle}</td>
              <td class="px-6 py-4 text-center">
             
              </td>
            </tr>
             </c:forEach>
           
            <!-- Add more rows as needed -->
          </tbody>
        </table>
      </div>
    </section>
  </main>

  <!-- Footer -->
  <footer class="bg-gray-800 text-center py-4 text-gray-400 text-sm">
    &copy; 2025 RideShare. All rights reserved.
  </footer>

</body>
</html>
