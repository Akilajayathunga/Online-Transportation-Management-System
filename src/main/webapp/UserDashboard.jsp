<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>User Dashboard</title>

<!-- Tailwind CSS -->
<script src="https://cdn.tailwindcss.com"></script>

<!-- Bootstrap CSS & Icons -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css"
	rel="stylesheet">
</head>
<body class="bg-gray-900 min-h-screen text-yellow-300" style="background-image: url('img/usedashboard.jpg'); background-size: cover; background-position: center;">

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
			<h2 class="text-3xl font-bold text-yellow-400 text-center mb-6">👤
				User Dashboard</h2>
			<c:set var="cus" value="${User12}" />

			<!-- User Info -->
			<div class="space-y-4">

				<div class="d-flex align-items-center mb-3">
					<i class="bi bi-person-fill text-yellow-400 fs-4 me-3"></i> <label
						for="name" class="text-lg text-yellow-300 me-3 mb-0">Full
						Name:</label> <input type="text" id="name" name="name" value="${cus.name}"
						class="form-control bg-gray-700 text-white border border-yellow-400 rounded px-3 py-2 w-full focus:bg-gray-700 focus:outline-none"
						readonly />
				</div>

				<div class="d-flex align-items-center mb-3">
					<i class="bi bi-envelope-fill text-yellow-400 fs-4 me-3"></i> <label
						for="email" class="text-lg text-yellow-300 me-3 mb-0">Email:</label>
					<input type="text" id="email" name="email" value="${cus.email}"
						class="form-control bg-gray-700 text-white border border-yellow-400 rounded px-3 py-2 w-full focus:bg-gray-700 focus:outline-none"
						readonly />
				</div>

				<div class="d-flex align-items-center mb-3">
					<i class="bi bi-hash text-yellow-400 fs-4 me-3"></i> <label
						for="age" class="text-lg text-yellow-300 me-3 mb-0">Age:</label> <input
						type="text" id="age" name="age" value="${cus.age}"
						class="form-control bg-gray-700 text-white border border-yellow-400 rounded px-3 py-2 w-full focus:bg-gray-700 focus:outline-none"
						readonly />
				</div>

				<div class="d-flex align-items-center mb-3">
					<i class="bi bi-phone-fill text-yellow-400 fs-4 me-3"></i> <label
						for="contact" class="text-lg text-yellow-300 me-3 mb-0">Contact:</label>
					<input type="text" id="contact" name="contact"
						value="${cus.number}"
						class="form-control bg-gray-700 text-white border border-yellow-400 rounded px-3 py-2 w-full focus:bg-gray-700 focus:outline-none"
						readonly />
				</div>

				<div class="d-flex align-items-center mb-3">
					<i class="bi bi-geo-alt-fill text-yellow-400 fs-4 me-3"></i> <label
						for="address" class="text-lg text-yellow-300 me-3 mb-0">Address:</label>
					<input type="text" id="address" name="Address"
						value="${cus.address}"
						class="form-control bg-gray-700 text-white border border-yellow-400 rounded px-3 py-2 w-full focus:bg-gray-700 focus:outline-none"
						readonly />
				</div>

			</div>

			<!-- Logout Button -->
			<div class="text-center mt-5">
				<a href="Home.jsp"
                  
					class="bg-yellow-400 hover:bg-yellow-500 text-black font-bold py-2 px-4 rounded transition">
					<i class="bi bi-box-arrow-right me-2"></i>Logout
				</a>
			</div>

             <div class="text-center mt-5">
             <form action="RideBooking.jsp" method = "post">
             <input type = "hidden" name="email" value="${cus.email}">
             				<button class="bg-green-400 hover:bg-yellow-500 text-black font-bold py-2 px-4 rounded transition">
					<i class="bi bi-car-front-fill"></i>Book a Ride !!
				</button>
              </form>

			</div>
              
              
             

        <div class="text-center mt-5">
  <form action="ViewAllRides" method="post">
    <input type="hidden" name="email" value="${cus.email}">
    <button class="bg-yellow-500 hover:bg-yellow-600 text-white font-bold py-2 px-4 rounded transition">
      <i class="bi bi-eye-fill mr-2"></i>View Bookings!
    </button>
  </form>
          </div>

         
			</div> 
		</div>
	</div>
	</div>

</body>
</html>