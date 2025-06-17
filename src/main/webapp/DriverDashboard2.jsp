<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Driver Dashboard</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet" />
</head>
<body class="bg-gray-900 text-white min-h-screen font-sans">

  <!-- Header -->
  <header class="bg-gray-800 shadow-md p-6 flex justify-between items-center">
    <h1 class="text-2xl font-bold text-yellow-400">🚗 Driver Dashboard</h1>
    <div class="flex items-center gap-4">
      <p class="text-sm text-gray-300"><i class="bi bi-person-circle text-yellow-400 me-1"></i> ${driver.name}</p>
      <form action="DriverLogout" method="post">
        <button class="text-sm bg-yellow-400 hover:bg-yellow-300 text-black px-3 py-1 rounded shadow">
          <i class="bi bi-box-arrow-right me-1"></i>Logout
        </button>
      </form>
    </div>
  </header>

  <!-- Main Content -->
  <main class="p-6 space-y-6">

    <!-- Stats Grid -->
    <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6">
      <div class="bg-gray-800 p-5 rounded-lg shadow border border-yellow-400">
        <p class="text-sm text-gray-400">Completed Rides</p>
        <h2 class="text-2xl font-bold text-yellow-300 mt-1">128</h2>
      </div>
      <div class="bg-gray-800 p-5 rounded-lg shadow border border-yellow-400">
        <p class="text-sm text-gray-400">Earnings</p>
        <h2 class="text-2xl font-bold text-green-400 mt-1">Rs. 84,560</h2>
      </div>
      <div class="bg-gray-800 p-5 rounded-lg shadow border border-yellow-400">
        <p class="text-sm text-gray-400">Active Rides</p>
        <h2 class="text-2xl font-bold text-blue-400 mt-1">3</h2>
      </div>
      <div class="bg-gray-800 p-5 rounded-lg shadow border border-yellow-400">
        <p class="text-sm text-gray-400">Rating</p>
        <h2 class="text-2xl font-bold text-yellow-400 mt-1">4.8 ★</h2>
      </div>
    </div>



<!-- Available Rides Button -->
<div class="text-center">
  <form action="allavailabelRides" method="post">
    <button type="submit"
      class="mt-4 bg-yellow-400 hover:bg-yellow-300 text-black font-semibold px-6 py-2 rounded-lg shadow-lg transition">
      <i class="bi bi-search me-2"></i> See Available Rides
    </button>
  </form>
</div>


   <div class="bg-gray-800 rounded-lg p-6 shadow border border-yellow-400">
  <h3 class="text-lg font-semibold mb-4 text-yellow-400">🧾 Ongoing Rides</h3>
  <div class="overflow-x-auto">
    <table class="min-w-full text-sm">
      <thead class="text-left text-gray-300 border-b border-yellow-400">
        <tr>
          <th class="py-2">Ride ID</th>
          <th class="py-2">Email</th>
          <th class="py-2">Pickup</th>
          <th class="py-2">Drop</th>

  
        </tr>
      </thead>
      <tbody class="text-gray-200">
        <c:set var="ride" value="${li1}"/>
          <tr class="border-b border-gray-700">
            <td class="py-2">#RID${ride.id}</td>
            <td class="py-2">${ride.email}</td>
            <td class="py-2">${ride.leaving}</td>
            <td class="py-2">${ride.going}</td>

          </tr>
      </tbody>
    </table>
  </div>
</div>

            <!-- Add more rows dynamically -->
          </tbody>
        </table>
      </div>
    </div>

  </main>
</body>
</html>
