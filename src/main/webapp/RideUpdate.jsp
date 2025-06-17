<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Edit Ride</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Tailwind CSS -->
  <script src="https://cdn.tailwindcss.com"></script>

  <!-- Bootstrap Icons -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">

  <style>
    body {
      background-image: url('https://images.unsplash.com/photo-1529156069898-49953e39b3ac?auto=format&fit=crop&w=1600&q=80');
      background-size: cover;
      background-position: center;
    }
    .glass {
      background: rgba(17, 24, 39, 0.85);
      backdrop-filter: blur(12px);
    }

    .floating-label input:focus ~ label,
    .floating-label input:not(:placeholder-shown) ~ label {
      transform: translateY(-1.25rem) scale(0.85);
      color: #facc15;
    }
  </style>
</head>

<body class="flex items-center justify-center min-h-screen px-4 text-yellow-200">

  <form action="RideUpdate" method="post" class="glass rounded-2xl p-10 w-full max-w-3xl shadow-2xl space-y-6">

    <!-- Header -->
    <div class="text-center mb-4">
      <h1 class="text-4xl font-extrabold text-yellow-400 mb-2">
        <i class="bi bi-pencil-square me-2"></i> Edit Your Ride
      </h1>
      <p class="text-yellow-300 text-sm">Make changes to your ride booking below</p>
    </div>
    
        <div class="floating-label relative">
      <input type="text" name="id" value="${param.id}" placeholder=" " readonly
        class="peer w-full bg-gray-800 text-yellow-200 px-4 py-3 rounded-lg border border-yellow-500 cursor-not-allowed" />
      <label class="absolute left-4 top-3 text-yellow-400 transition-all duration-300">ID : (read-only)</label>
    </div>

    <!-- Email (Read-only) -->
    <div class="floating-label relative">
      <input type="text" name="email" value="${param.email}" placeholder=" " readonly
        class="peer w-full bg-gray-800 text-yellow-200 px-4 py-3 rounded-lg border border-yellow-500 cursor-not-allowed" />
      <label class="absolute left-4 top-3 text-yellow-400 transition-all duration-300">Email (read-only)</label>
    </div>

    <!-- Leaving -->
    <div class="floating-label relative">
      <input type="text" name="leaving" value="${param.leaving}" placeholder=" " required
        class="peer w-full bg-gray-800 text-yellow-100 px-4 py-3 rounded-lg border border-gray-600 focus:ring-2 focus:ring-yellow-400" />
      <label class="absolute left-4 top-3 text-yellow-400 transition-all duration-300">From</label>
    </div>

    <!-- Going -->
    <div class="floating-label relative">
      <input type="text" name="going" value="${param.going}" placeholder=" " required
        class="peer w-full bg-gray-800 text-yellow-100 px-4 py-3 rounded-lg border border-gray-600 focus:ring-2 focus:ring-yellow-400" />
      <label class="absolute left-4 top-3 text-yellow-400 transition-all duration-300">To</label>
    </div>

    <!-- Vehicle -->
    <div class="floating-label relative">
      <input type="text" name="vehicle" value="${param.vehicle}" placeholder=" " required
        class="peer w-full bg-gray-800 text-yellow-100 px-4 py-3 rounded-lg border border-gray-600 focus:ring-2 focus:ring-yellow-400" />
      <label class="absolute left-4 top-3 text-yellow-400 transition-all duration-300">Vehicle</label>
       <p class="mt-2 text-sm text-yellow-400">
    Please enter only: Van, Tuk Tuk, Motorcycle, or Car.
  </p>
    </div>

    <!-- Date -->
    <div class="floating-label relative">
      <input type="date" name="date" value="${param.date}" placeholder=" " required
        class="peer w-full bg-gray-800 text-yellow-100 px-4 py-3 rounded-lg border border-gray-600 focus:ring-2 focus:ring-yellow-400" />
      <label class="absolute left-4 top-3 text-yellow-400 transition-all duration-300">Date</label>
    </div>

    <!-- Time -->
    <div class="floating-label relative">
      <input type="time" name="time" value="${param.time}" placeholder=" " required
        class="peer w-full bg-gray-800 text-yellow-100 px-4 py-3 rounded-lg border border-gray-600 focus:ring-2 focus:ring-yellow-400" />
      <label class="absolute left-4 top-3 text-yellow-400 transition-all duration-300">Time</label>
    </div>

    <!-- Buttons -->
    <div class="flex justify-between pt-6">
      <button type="submit"
        class="bg-yellow-400 text-black px-6 py-2 rounded-lg font-bold hover:bg-yellow-500 shadow-md transition">
        <i class="bi bi-save me-1"></i> Save Changes
      </button>
      <a href="UserDashboard.jsp"
        class="text-yellow-200 hover:text-yellow-100 underline flex items-center gap-2">
        <i class="bi bi-arrow-left-circle"></i> Back to Dashboard
      </a>
    </div>
  </form>

</body>
</html>
