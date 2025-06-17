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
      <form action="Home.jsp" method="post">
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

    <!-- Driver Info Section -->
    <div class="bg-gray-800 p-6 rounded-lg border border-yellow-400 shadow">
      <h2 class="text-xl font-semibold mb-4 text-yellow-400">👤 Driver Details</h2>
      <div class="grid grid-cols-1 sm:grid-cols-2 gap-4 text-sm">
            <c:set var="driver" value="${d2}" />  
        
        <div>
          <p class="text-gray-400">Name</p>
          <p class="font-semibold text-white">${driver.name}</p>
        </div>
        <div>
          <p class="text-gray-400">Email</p>
          <p class="font-semibold text-white">${driver.email}</p>
        </div>
        <div>
          <p class="text-gray-400">Age</p>
          <p class="font-semibold text-white">${driver.age}</p>
        </div>
        <div>
          <p class="text-gray-400">Contact No</p>
          <p class="font-semibold text-white">${driver.no}</p>
        </div>
      </div>
    </div>
<!-- Account Management Buttons -->
<div class="mt-6 flex justify-center gap-4">
  <!-- Update Account Button -->
  <form action="Driverupdate.jsp" method="post">
         <input type="hidden" name="email" value="${driver.email}" />
        <input type="hidden" name="name" value="${driver.name}" />
        <input type="hidden" name="age" value="${driver.age}" />
        <input type="hidden" name="no" value="${driver.no}" />
    
    <button type="submit"
      class="bg-blue-500 hover:bg-blue-400 text-white font-semibold px-6 py-2 rounded-lg shadow transition">
      <i class="bi bi-pencil-square me-2"></i> Update Account
    </button>
  </form>

  <!-- Delete Account Button -->
  <form action="DeleteDriver" method="post" onsubmit="return confirm('Are you sure you want to delete your account? This action cannot be undone.');">
    <input type="hidden" name="email" value="${driver.email}" />
    <button type="submit"
      class="bg-red-600 hover:bg-red-500 text-white font-semibold px-6 py-2 rounded-lg shadow transition">
      <i class="bi bi-trash me-2"></i> Delete Account
    </button>
  </form>
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


   
  </main>
</body>
</html>
