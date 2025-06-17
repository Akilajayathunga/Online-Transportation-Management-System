<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Availabel Rides </title>

  <!-- Tailwind CSS -->
  <script src="https://cdn.tailwindcss.com"></script>

  <!-- Bootstrap Icons -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
</head>
<body class="bg-gray-900 text-yellow-300 min-h-screen p-6">

  <div class="max-w-7xl mx-auto">
    <h1 class="text-3xl font-bold text-center mb-8 text-yellow-400">Availabel Rides</h1>

    <!-- Ride Bookings Table -->
    <div class="overflow-x-auto rounded-lg shadow-lg">
      <table class="min-w-full text-sm bg-gray-800 rounded-xl">
        <thead class="text-left text-yellow-400 border-b border-yellow-400">
          <tr>
            <th class="p-3">ID</th>
            <th class="p-3">Email</th>
            <th class="p-3">From</th>
            <th class="p-3">To</th>
            <th class="p-3">Vehicle</th>
            <th class="p-3">Date</th>
            <th class="p-3">Time</th>
            <th class="p-3 text-center">Actions</th>
          </tr>
        </thead>
        <tbody class="text-gray-200">
          <c:forEach var="ride" items="${ridelist}">
            <tr class="border-b border-gray-700 hover:bg-gray-700 transition">
              <td class="p-3">${ride.id}</td>
              <td class="p-3">${ride.email}</td>
              <td class="p-3">${ride.leaving}</td>
              <td class="p-3">${ride.going}</td>
              <td class="p-3">${ride.vehicle}</td>
              <td class="p-3">${ride.date}</td>
              <td class="p-3">${ride.time}</td>
              <td class="p-3 text-center space-y-1">
                
             


                <!-- Get Ride Button -->
                <form action="GetRide" method="post" class="mt-2">
                  <input type="hidden" name="rideid" value="${ride.id}">
                  <button type="submit" class="bg-green-500 hover:bg-green-400 text-white px-4 py-1 rounded text-sm font-bold">
                    Get Ride
                  </button>
                </form>

              </td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
    </div>


  </div>

</body>
</html>
