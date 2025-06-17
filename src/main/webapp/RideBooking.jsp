<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Ride Booking UI</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css"/>
</head>
<body class="bg-gray-800 text-white font-sans p-4 min-h-screen" style="background-image: url('img/booking.jpg'); background-size: cover; background-position: center;">


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


	<div class="container py-5 mt-20">
		<div class="bg-gray-800 p-6 rounded-lg shadow-lg max-w-2xl mx-auto">
<form action = "AddRide" method = "post">
  <div class="max-w-md mx-auto space-y-6">

  <div>
    <input type="hidden" name="id" >
  
      <h1 class="text-xl font-bold">Hii !!</h1>
      <input type="email" id="email" name="email" 
class="form-control bg-gray-700 text-white border border-yellow-400 rounded px-3 py-2 w-full focus:bg-gray-700 focus:outline-none"
						 />
    </div>


    <div>
      <h1 class="text-xl font-bold">Let's find you great rides ✨</h1>
    </div>

    <!-- From / To Input -->
    <div class="bg-gray-900 rounded-2xl p-4 text-white space-y-3 shadow">
      <div class="flex items-center gap-2">
        <i class="bi bi-geo-alt-fill text-yellow-400"></i>
        <input type="text" name ="leaving" placeholder="Leaving from" class="w-full bg-transparent outline-none text-sm placeholder-white/70"/>
      </div>
      <div class="flex items-center gap-2">
        <i class="bi bi-flag-fill text-yellow-400"></i>
        <input type="text" name = "going" placeholder="Going to" class="w-full bg-transparent outline-none text-sm placeholder-white/70"/>
      </div>
    </div>

    

 <p class="text-sm font-semibold">Select a vehicle</p>
  <div class="grid grid-cols-4 gap-3 text-center">

    <!-- Vehicle -->
    <label class="block cursor-pointer">
      <input type="radio"  name="selectedVehicle" value="Bus" class="sr-only peer" required>
      <div class="bg-gray-900 text-white rounded-xl py-4 flex flex-col items-center justify-center shadow peer-checked:ring-2 peer-checked:ring-yellow-400 hover:bg-gray-700">
        <i class="bi bi-truck-front-fill text-xl text-yellow-400"></i>
        <span class="text-xs mt-1">Van</span>
      </div>
    </label>

    <!-- Tuk Tuk -->
    <label class="block cursor-pointer">
      <input type="radio" name="selectedVehicle" value="Tuk Tuk" class="sr-only peer">
      <div class="bg-gray-900 text-white rounded-xl py-4 flex flex-col items-center justify-center shadow peer-checked:ring-2 peer-checked:ring-yellow-400 hover:bg-gray-700">
        <i class="bi bi-bicycle text-xl text-yellow-400"></i>
        <span class="text-xs mt-1">Tuk Tuk</span>
      </div>
    </label>

    <!-- Motor -->
    <label class="block cursor-pointer">
      <input type="radio" name="selectedVehicle" value="Motorcycle" class="sr-only peer">
      <div class="bg-gray-900 text-white rounded-xl py-4 flex flex-col items-center justify-center shadow peer-checked:ring-2 peer-checked:ring-yellow-400 hover:bg-gray-700">
        <i class="bi bi-scooter text-xl text-yellow-400"></i>
        <span class="text-xs mt-1">Motor</span>
      </div>
    </label>

    <!-- Car -->
    <label class="block cursor-pointer">
      <input type="radio" name="selectedVehicle" value="Car" class="sr-only peer">
      <div class="bg-gray-900 text-white rounded-xl py-4 flex flex-col items-center justify-center shadow peer-checked:ring-2 peer-checked:ring-yellow-400 hover:bg-gray-700">
        <i class="bi bi-car-front-fill text-xl text-yellow-400"></i>
        <span class="text-xs mt-1">Car</span>
      </div>
    </label>

  </div>


    <!-- Date and Time Picker -->
    <div class="bg-gray-900 rounded-2xl p-4 text-white space-y-4 shadow">
      <div class="flex items-center justify-between">
        <label class="text-sm font-medium flex items-center gap-2">
          <i class="bi bi-calendar-date text-yellow-400"></i>
          Date
        </label>
        <input type="date" name = "date" class="text-sm bg-gray-800 text-white border border-gray-700 p-1 rounded-md" />
      </div>
      <div class="flex items-center justify-between">
        <label class="text-sm font-medium flex items-center gap-2">
          <i class="bi bi-clock text-yellow-400"></i>
          Time
        </label>
        <input type="time" name = "time" class="text-sm bg-gray-800 text-white border border-gray-700 p-1 rounded-md" />
      </div>
    </div>

    <!-- Submit Button -->
     <button type = "submit" class="w-full bg-yellow-400 hover:bg-yellow-300 text-black py-3 rounded-xl font-semibold shadow">
Find rides
    </button>

    
  
</form>
</div>
</div>

</body>
</html>
