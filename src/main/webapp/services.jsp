<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>GoRide | Our Services</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
</head>
<body class="bg-gray-900 text-white">

<!-- Navbar -->
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

<section 
  class="w-full min-h-screen flex items-center justify-center bg-cover bg-center bg-no-repeat px-6 text-center" 
  style="background-image: url('img/services-bg.jpg');"
>
  <div class="bg-black bg-opacity-70 p-10 rounded-xl max-w-4xl mx-auto">
    <h2 class="text-3xl font-bold text-yellow-400 mb-6">Our Services</h2>
    <p class="text-lg text-gray-300 mb-8">
      GoRide offers a variety of services that make your transportation experience easier, faster, and more reliable. Learn more about what we offer.
    </p>
  </div>
</section>


  <!-- Services Section -->
  <section class="bg-gray-800 py-16 px-6">
    <div class="max-w-6xl mx-auto grid md:grid-cols-3 gap-10 text-center">
      <!-- Service 1: Ride Booking -->
      <div class="bg-gray-700 p-6 rounded-lg shadow-lg hover:scale-105 transform transition-all">
        <i class="bi bi-car-front-fill text-4xl text-yellow-400 mb-4"></i>
        <h3 class="text-xl font-bold text-gray-100 mb-4">Easy Ride Booking</h3>
        <p class="text-gray-400 mb-6">
          Book your ride in just a few clicks. Whether it's a short trip or a long journey, GoRide makes the booking process smooth and simple.
        </p>
        <a href="register.jsp" class="text-yellow-400 hover:text-yellow-300 font-semibold">Get Started</a>
      </div>

      <!-- Service 2: Driver Management -->
      <div class="bg-gray-700 p-6 rounded-lg shadow-lg hover:scale-105 transform transition-all">
        <i class="bi bi-person-lines-fill text-4xl text-yellow-400 mb-4"></i>
        <h3 class="text-xl font-bold text-gray-100 mb-4">Driver Management</h3>
        <p class="text-gray-400 mb-6">
          Our admin dashboard allows for seamless management of drivers. Add, edit, or remove drivers effortlessly, ensuring smooth operations.
        </p>
        <a href="admin_dashboard.jsp" class="text-yellow-400 hover:text-yellow-300 font-semibold">Learn More</a>
      </div>

      <!-- Service 3: Real-time Tracking -->
      <div class="bg-gray-700 p-6 rounded-lg shadow-lg hover:scale-105 transform transition-all">
        <i class="bi bi-geo-alt-fill text-4xl text-yellow-400 mb-4"></i>
        <h3 class="text-xl font-bold text-gray-100 mb-4">Real-Time Location Tracking</h3>
        <p class="text-gray-400 mb-6">
          Track your ride in real time for ultimate peace of mind. Know exactly where your driver is and how long it will take to arrive.
        </p>
        <a href="track.jsp" class="text-yellow-400 hover:text-yellow-300 font-semibold">Track Now</a>
      </div>
    </div>
  </section>

  <!-- CTA Section -->
  <section class="bg-yellow-400 text-gray-900 py-12 px-6 text-center">
    <h2 class="text-3xl font-bold mb-4">Ready to Start Your Ride?</h2>
    <p class="text-lg mb-6">Sign up now and experience the most reliable, fast, and affordable transportation service with GoRide.</p>
    <a href="UserReg.jsp" class="bg-gray-900 text-yellow-400 px-8 py-3 rounded-full font-semibold hover:bg-gray-800 transition">
      Sign Up Now
    </a>
  </section>

  <!-- Footer -->
  <footer class="bg-gray-800 text-gray-400 text-sm text-center py-4">
    &copy; 2025 GoRide. All rights reserved.
  </footer>

</body>
</html>
