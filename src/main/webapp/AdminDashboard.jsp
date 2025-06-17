<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Admin Dashboard</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
</head>
<body class="bg-gray-800 text-white font-sans p-4 min-h-screen" style="background-image: url('img/Adminbg.jpg'); background-size: cover; background-position: center;">


<header class="bg-gray-800 py-4 px-6 flex justify-between items-center shadow-md w-full fixed top-0 left-0 z-10">
  <h1 class="text-2xl font-bold text-yellow-400 flex items-center">
    <i class="bi bi-car-front-fill text-3xl mr-2"></i>
    GoRide
  </h1>
  <div class="flex items-center space-x-6">
    <nav class="space-x-6">
      <a href="Home.jsp" class="text-gray-300 hover:text-yellow-400">Home</a>
      <a href="Aboutus.jsp" class="text-gray-300 hover:text-yellow-400">About</a>
      <a href="services.jsp" class="text-gray-300 hover:text-yellow-400">Services</a>
      <a href="UserLogin.jsp" class="text-gray-300 hover:text-yellow-400">Login</a>
    </nav>
    <a href="Home.jsp" class="bg-red-500 hover:bg-red-600 text-white font-semibold px-4 py-2 rounded flex items-center">
      <i class="bi bi-box-arrow-right mr-2"></i> Logout
    </a>
  </div>
</header>


  <div class="container mx-auto px-6 py-10">

    
    
    <!-- Admin Info Card -->
    <div class="bg-gray-800 rounded-2xl shadow-lg p-8 mb-12">
      <div class="mb-8">
        <h2 class="text-4xl font-extrabold text-yellow-400 mb-6">👤 Admin Details</h2>

        <c:set var="add" value="${admin12}" />

        <div class="grid md:grid-cols-2 gap-6 text-xl leading-relaxed">
          <div>
            <p><span class="font-bold text-yellow-300 text-2xl">Name:</span> ${add.name}</p>
            <p><span class="font-bold text-yellow-300 text-2xl">Email:</span> ${add.email}</p>
          </div>
          <div>
            <p><span class="font-bold text-yellow-300 text-2xl">Phone:</span> ${add.contact}</p>
            <p><span class="font-bold text-yellow-300 text-2xl">Age:</span> ${add.age}</p>
          </div>
        </div>
      </div>

      <!-- Admin Action Buttons -->
      <div class="flex flex-wrap gap-4">
        <form action="EditAdmin.jsp" method="post">
          <input type="hidden" name="name" value="${add.name}">
          <input type="hidden" name="email" value="${add.email}">
          <input type="hidden" name="contact" value="${add.contact}">
          <input type="hidden" name="age" value="${add.age}">
          <button class="bg-yellow-400 text-gray-900 px-6 py-2 rounded-lg hover:bg-yellow-300 transition font-semibold flex items-center">
            <i class="bi bi-pencil-square mr-2"></i>Edit Admin
          </button>
        </form>
<form action="DriverUpdateAdmin.jsp" method="post">

        <button class="bg-yellow-400 text-gray-900 px-6 py-2 rounded-lg hover:bg-yellow-300 transition font-semibold flex items-center">
          <i class="bi bi-person-gear mr-2"></i>Edit Driver
        </button>
       </form>     
        <form action="addDriveradmin.jsp" method = "post">
        
        <button class="bg-yellow-400 text-gray-900 px-6 py-2 rounded-lg hover:bg-yellow-300 transition font-semibold flex items-center">
          <i class="bi bi-plus-circle mr-2"></i>Add Driver
        </button>
        </form>
        
      </div>
    </div>

    <!-- View Data Section -->
    <div class="bg-gray-800 rounded-2xl shadow-lg p-8">
      <h2 class="text-3xl font-extrabold text-yellow-400 mb-6">📊 View Data</h2>
      <div class="flex flex-wrap gap-4">
        <form action="allUsersAdmin" method="post">
          <button class="bg-yellow-400 text-gray-900 px-6 py-3 rounded-lg hover:bg-yellow-300 transition font-semibold flex items-center">
            <i class="bi bi-person-lines-fill mr-2"></i>All Users
          </button>
        </form>

        <form action="allDriversadmin" method="post">
          <button class="bg-yellow-400 text-gray-900 px-6 py-3 rounded-lg hover:bg-yellow-300 transition font-semibold flex items-center">
            <i class="bi bi-person-badge mr-2"></i>All Drivers
          </button>
        </form>

        <form action="allavailabelRidesAdmin" method="post">
          <button class="bg-yellow-400 text-gray-900 px-6 py-3 rounded-lg hover:bg-yellow-300 transition font-semibold flex items-center">
            <i class="bi bi-car-front mr-2"></i>All Rides
          </button>
        </form>
      </div>
    </div>

  </div>

</body>
</html>
