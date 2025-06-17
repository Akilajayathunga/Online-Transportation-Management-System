<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Login</title>

  <!-- Tailwind CSS -->
  <script src="https://cdn.tailwindcss.com"></script>

  <!-- Bootstrap CSS & Icons -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
</head>
<body class="bg-gray-900 min-h-screen text-yellow-300 flex items-center justify-center" style="background-image: url('img/homebg3.jpg'); background-size: cover; background-position: center;">

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

  <!-- Login Form Section -->
  <div class="bg-gray-800 p-8 rounded-lg shadow-lg w-full max-w-md mt-20">
    <h2 class="text-3xl font-bold text-yellow-400 text-center mb-6">🔐 Login</h2>

    <form action="UserLogin" method="post">
      <div class="mb-4">
        <label class="block text-yellow-300 mb-2" for="email">Email</label>
        <div class="input-group">
          <span class="input-group-text bg-yellow-400"><i class="bi bi-envelope-fill text-black"></i></span>
          <input type="email" id="email" name="email" required class="form-control" placeholder="Enter your email">
        </div>
      </div>

      <div class="mb-4">
        <label class="block text-yellow-300 mb-2" for="password">Password</label>
        <div class="input-group">
          <span class="input-group-text bg-yellow-400"><i class="bi bi-lock-fill text-black"></i></span>
          <input type="password" id="password" name="password" required class="form-control" placeholder="Enter your password">
        </div>
      </div>

      <div class="text-center mb-4">
        <button type="submit" class="bg-yellow-400 hover:bg-yellow-500 text-black font-bold py-2 px-4 rounded transition w-full">
          <i class="bi bi-box-arrow-in-right me-2"></i>Login
        </button>
      </div>
    </form>

    <!-- Links for Admin and Driver Login -->
    <div class="flex justify-between text-center mt-4">
      <a href="adminlogin.jsp" class="text-yellow-300 hover:text-yellow-400">Admin Login</a>
      <a href="DriverLogin.jsp" class="text-yellow-300 hover:text-yellow-400">Driver Login</a>
    </div>
  </div>

</body>
</html>
