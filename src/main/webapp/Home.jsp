<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>GoRide | Online Transportation System</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
  
  <style>
    /* Optionally, you can add custom CSS for fine-tuning the background */
    #hero {
      height: 100vh; /* Ensure full screen height */
      background-size: cover; /* Background image covers the entire container */
      background-position: center; /* Center the background image */
    }
  </style>
</head>
<body class="bg-gray-900 text-white min-h-screen flex flex-col">
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

  <!-- Hero Section with Static Background Image -->
  <section
    id="hero"
    class="relative h-[80vh] w-full flex items-center justify-center text-center text-white bg-cover bg-center"
    style="background-image: url('img/homebg.jpg');"
  >
    <!-- Overlay -->
    <div class="absolute inset-0 bg-black bg-opacity-60 z-10"></div>
    <!-- Content -->
    <div class="relative z-20 px-4">
      <h2 class="text-4xl md:text-6xl font-extrabold text-yellow-400 mb-6">Welcome to GoRide</h2>
      <p class="text-lg md:text-xl text-gray-200 mb-8 max-w-2xl mx-auto">
        Your reliable online transportation system. Book rides, track drivers, and manage your transport easily — all in one place.
      </p>
      <a href="UserReg.jsp" class="bg-yellow-400 hover:bg-yellow-300 text-gray-900 font-bold px-6 py-3 rounded-full transition">
        <i class="bi bi-car-front-fill mr-2"></i>Get Started
      </a>
    </div>
  </section>

  <!-- Features Section -->
  <section class="bg-gray-800 py-16 px-6">
    <div class="max-w-6xl mx-auto grid md:grid-cols-3 gap-10 text-center">
      <div>
        <i class="bi bi-geo-alt-fill text-4xl text-yellow-400 mb-4"></i>
        <h3 class="text-xl font-bold mb-2">Track Location</h3>
        <p class="text-gray-400">Real-time driver and vehicle tracking for peace of mind.</p>
      </div>
      <div>
        <i class="bi bi-person-lines-fill text-4xl text-yellow-400 mb-4"></i>
        <h3 class="text-xl font-bold mb-2">Driver Management</h3>
        <p class="text-gray-400">Admin dashboard to add, manage, and remove drivers.</p>
      </div>
      <div>
        <i class="bi bi-calendar-check-fill text-4xl text-yellow-400 mb-4"></i>
        <h3 class="text-xl font-bold mb-2">Easy Booking</h3>
        <p class="text-gray-400">Smooth ride booking experience for customers.</p>
      </div>
    </div>
  </section>

  <!-- CTA Section -->
  <section class="bg-yellow-400 text-gray-900 py-12 px-6 text-center">
    <h2 class="text-3xl font-bold mb-4">Start Your Ride with GoRide</h2>
    <p class="text-lg mb-6">Join thousands of users enjoying fast and safe transport!</p>
    <a href="UserReg.jsp" class="bg-gray-900 text-yellow-400 px-6 py-3 rounded-full font-semibold hover:bg-gray-800 transition">
      Sign Up Now
    </a>
  </section>

  <!-- Footer -->
  <footer class="bg-gray-800 text-gray-400 text-sm text-center py-4">
    &copy; 2025 GoRide. All rights reserved.
  </footer>

</body>
</html>
