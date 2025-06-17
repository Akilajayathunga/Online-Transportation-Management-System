<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
                <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Drivers | RideShare Admin</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
</head>
<body class="bg-gray-900 text-white min-h-screen flex flex-col">
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

  <!-- Main Content -->
  <main class="flex-1 p-6">
    <!-- Drivers Section -->
    <section class="max-w-6xl mx-auto">
      <h2 class="text-4xl font-bold text-yellow-400 mb-8">🚗 All Registered Drivers</h2>

      <div class="overflow-x-auto bg-gray-800 rounded-2xl shadow-2xl ring-1 ring-gray-700">
        <table class="min-w-full text-sm text-left">
          <thead class="bg-gray-700 text-yellow-300 uppercase tracking-wide text-xs">
            <tr>
              <th class="px-6 py-4">Name</th>
              <th class="px-6 py-4">Email</th>
              <th class="px-6 py-4">Phone</th>
              <th class="px-6 py-4">Age</th>
              <th class="px-6 py-4 text-center">Actions</th>
            </tr>
          </thead>
          <tbody class="divide-y divide-gray-700">
                              <c:forEach var="dr" items="${dlist}">
            <tr class="hover:bg-gray-700 transition">
              <td class="px-6 py-4">${dr.name}</td>
              <td class="px-6 py-4">${dr.email}</td>
              <td class="px-6 py-4">${dr.no}</td>
              <td class="px-6 py-4">${dr.age}</td>
                                      

              <td class="px-6 py-4 text-center">
                            <form action = "deletDriveradmin" method = "post">
                            <input type = "hidden" name = "email" value = "${dr.email}">
                <button type = "submit" class="text-red-500 hover:text-red-600" title="Remove Driver">
                  <i class="bi bi-person-x-fill text-xl"></i>
                </button>
              </form>
              </td>

              
               </c:forEach>
            </tr>
            
          </tbody>
        </table>
      </div>
    </section>
  </main>

  <!-- Footer -->
  <footer class="bg-gray-800 text-center py-4 text-gray-400 text-sm">
    &copy; 2025 RideShare. All rights reserved.
  </footer>

</body>
</html>
