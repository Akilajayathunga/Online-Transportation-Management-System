<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Passenger Registration</title>
  <!-- Tailwind CSS CDN -->
  <script src="https://cdn.tailwindcss.com"></script>
  <!-- Bootstrap CDN -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body class="bg-gray-900 flex items-center justify-center min-h-screen" style="background-image: url('img/Reg.jpg'); background-size: cover; background-position: center;">

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

  <div class="bg-gray-800 p-8 rounded-lg shadow-lg w-full max-w-md">
    <h2 class="text-2xl font-bold text-yellow-400 mb-6 text-center">Passenger Registration</h2>

    <form action ="RegUser" method = "post" class="space-y-4 text-black">
      <!-- Name -->
      <div>
        <label class="block text-sm mb-1 text-yellow-300">Full Name</label>
        <input type="text" placeholder="John Doe" name = "name" class="form-control bg-gray-700 text-black border border-gray-600 placeholder-gray-400" required>
      </div>

      <!-- Email -->
      <div>
        <label class="block text-sm mb-1 text-yellow-300">Email</label>
        <input type="email" placeholder="you@example.com" name = "email" class="form-control bg-gray-700 text-black border border-gray-600 placeholder-gray-400" required>
      </div>

      <!-- Password -->
      <div>
        <label class="block text-sm mb-1 text-yellow-300">Password</label>
        <input type="password" placeholder="••••••••"  name = "password" class="form-control bg-gray-700 text-black border border-gray-600 placeholder-gray-400" required>
      </div>

      <!-- Age -->
      <div>
        <label class="block text-sm mb-1 text-yellow-300">Age</label>
        <input type="number" placeholder="30" min="0"  max = "100" name = "age" class="form-control bg-gray-700 text-black border border-gray-600 placeholder-gray-400" required>
      </div>

      <!-- Mobile Number -->
      <div>
        <label class="block text-sm mb-1 text-yellow-300">Mobile Number</label>
        <input type="tel" placeholder="+1 234 567 8901"  name = "contact" class="form-control bg-gray-700 text-black border border-gray-600 placeholder-gray-400" required>
      </div>

      <!-- Address -->
      <div>
        <label class="block text-sm mb-1 text-yellow-300">Address</label>
        <input placeholder="123 Main St, City, Country" name = "address" rows="2" class="form-control bg-gray-700 text-black border border-gray-600 placeholder-gray-400" required/>
      </div>

      <!-- Submit Button -->
      <button type="submit" class="w-full bg-yellow-400 hover:bg-yellow-500 text-black font-bold py-2 rounded transition">
        Register
      </button>
    </form>
    

<!-- Login Prompt -->
<p class="text-center text-sm text-yellow-300 mt-4">
  Already have an account? 
  <a href="UserLogin.jsp" class="text-yellow-400 hover:underline">Login here</a>
</p>
    
  </div>

</body>
</html>
