<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>GoRide | About Us</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
</head>
<body class="bg-gray-900 text-white">

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

  <!-- About Us Section -->
<section 
  class="w-full min-h-screen flex items-center justify-center bg-cover bg-center bg-no-repeat px-6 text-center" 
  style="background-image: url('img/about.jpg');"
>
  <div class="bg-black bg-opacity-70 p-8 rounded-xl max-w-4xl mx-auto">
    <h2 class="text-3xl font-bold text-yellow-400 mb-6">About GoRide</h2>
    <p class="text-lg text-gray-300 mb-8">
      GoRide is dedicated to providing the best online transportation experience. We strive to deliver reliable, fast, and seamless services so you can focus on what matters most: your journey.
    </p>
    <a href="UserReg.jsp" class="bg-yellow-400 text-gray-900 px-8 py-3 rounded-full font-semibold hover:bg-yellow-300 transition">
      Get Started with GoRide
    </a>
  </div>
</section>

<!-- Contact Us Section -->
<section class="bg-gray-900 py-16 px-6 text-center">
  <h2 class="text-3xl font-bold text-yellow-400 mb-6">Contact Us</h2>
  <p class="text-lg text-gray-300 mb-8">
    Have questions, feedback, or need assistance? We're here to help!
  </p>
  <a href="Contactus.jsp" class="bg-yellow-400 text-gray-900 px-8 py-3 rounded-full font-semibold hover:bg-yellow-300 transition">
    Contact Us
  </a>
</section>


  <!-- Our Mission & Values Section -->
  <section class="bg-gray-900 py-16 px-6 text-center">
    <h3 class="text-2xl font-bold text-yellow-400 mb-6">Our Mission & Values</h3>
    <div class="max-w-5xl mx-auto grid md:grid-cols-2 gap-10 text-gray-400">
      <div class="bg-gray-700 p-6 rounded-lg shadow-lg">
        <h4 class="text-xl font-semibold text-gray-100 mb-4">Our Mission</h4>
        <p>
          Our mission is to make transportation safer, faster, and more convenient for everyone. We aim to lead the industry by providing innovative solutions and maintaining the highest quality standards.
        </p>
      </div>
      <div class="bg-gray-700 p-6 rounded-lg shadow-lg">
        <h4 class="text-xl font-semibold text-gray-100 mb-4">Our Values</h4>
        <p>
          At GoRide, we value trust, customer satisfaction, and continuous innovation. We are committed to providing an exceptional service to all our users, ensuring that every ride is a great experience.
        </p>
      </div>
    </div>
  </section>

  <!-- Our Team Section -->
  <section class="bg-gray-800 py-16 px-6">
    <h2 class="text-3xl font-bold text-yellow-400 text-center mb-8">Meet Our Team</h2>
    <div class="max-w-6xl mx-auto grid md:grid-cols-3 gap-10">
      <div class="bg-gray-700 p-6 rounded-lg shadow-lg text-center hover:scale-105 transform transition-all">
        <img src="img/team1.jpg" alt="Team Member 1" class="w-32 h-32 rounded-full mx-auto mb-4">
        <h3 class="text-xl font-semibold text-gray-100 mb-2">John Doe</h3>
        <p class="text-gray-400">CEO & Founder</p>
        <p class="text-gray-400 mt-4">John is the visionary behind GoRide. His leadership drives our commitment to innovation and customer satisfaction.</p>
      </div>
      <div class="bg-gray-700 p-6 rounded-lg shadow-lg text-center hover:scale-105 transform transition-all">
        <img src="img/team2.jpg" alt="Team Member 2" class="w-32 h-32 rounded-full mx-auto mb-4">
        <h3 class="text-xl font-semibold text-gray-100 mb-2">Jane Smith</h3>
        <p class="text-gray-400">COO</p>
        <p class="text-gray-400 mt-4">Jane ensures the smooth operation of our services and plays a key role in strategic growth.</p>
      </div>
      <div class="bg-gray-700 p-6 rounded-lg shadow-lg text-center hover:scale-105 transform transition-all">
        <img src="img/team3.jpg" alt="Team Member 3" class="w-32 h-32 rounded-full mx-auto mb-4">
        <h3 class="text-xl font-semibold text-gray-100 mb-2">Alice Johnson</h3>
        <p class="text-gray-400">Marketing Manager</p>
        <p class="text-gray-400 mt-4">Alice leads GoRide's marketing efforts, ensuring we reach our users effectively and communicate our values clearly.</p>
      </div>
    </div>
  </section>

  <!-- Call to Action Section -->
  <section class="bg-yellow-400 text-gray-900 py-12 px-6 text-center">
    <h2 class="text-3xl font-bold mb-4">Join the GoRide Family</h2>
    <p class="text-lg mb-6">Experience safe, reliable, and convenient transportation with just a few clicks.</p>
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
