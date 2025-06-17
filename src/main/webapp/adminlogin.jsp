<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Admin Login</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
</head>
<body class="bg-gray-900 min-h-screen flex items-center justify-center text-white" style="background-image: url('img/adminlogin.jpg'); background-size: cover; background-position: center;">
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


  <div class="bg-gray-800 p-8 rounded-2xl shadow-xl w-full max-w-md">
    <h2 class="text-3xl font-bold text-yellow-400 mb-6 text-center">
      <i class="bi bi-person-lock mr-2"></i>Admin Login
    </h2>

    <form action="loginAdmin" method="post" class="space-y-5">
      <!-- Email Field -->
      <div>
        <label for="email" class="block mb-1 text-yellow-300 font-semibold">Email</label>
        <input type="email" id="email" name="email" required
               class="w-full px-4 py-2 rounded bg-gray-700 text-white border border-gray-600 focus:outline-none focus:ring-2 focus:ring-yellow-400">
      </div>

      <!-- Password Field -->
      <div>
        <label for="password" class="block mb-1 text-yellow-300 font-semibold">Password</label>
        <input type="password" id="password" name="password" required
               class="w-full px-4 py-2 rounded bg-gray-700 text-white border border-gray-600 focus:outline-none focus:ring-2 focus:ring-yellow-400">
      </div>

      <!-- Submit Button -->
      <button type="submit"
              class="w-full bg-yellow-400 text-gray-900 font-semibold py-2 px-4 rounded hover:bg-yellow-300 transition">
        <i class="bi bi-box-arrow-in-right mr-2"></i>Login
      </button>
    </form>

    <!-- Optional: Forgot Password / Message -->
    <p class="mt-6 text-center text-sm text-gray-400">
      Forgot your password? <a href="#" class="text-yellow-300 hover:underline">Reset here</a>
    </p>
  </div>

</body>
</html>
