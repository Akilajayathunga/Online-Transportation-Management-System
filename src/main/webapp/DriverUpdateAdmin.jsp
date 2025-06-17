<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Update Driver Details</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
</head>
<body class="bg-gray-900 text-white min-h-screen flex items-center justify-center p-6">

  <div class="bg-gray-800 p-8 rounded-xl shadow-lg w-full max-w-2xl border border-yellow-400">
    <h2 class="text-2xl font-bold text-yellow-400 mb-6 flex items-center">
      <i class="bi bi-pencil-square me-2"></i> Update Driver Account
    </h2>

    <form action="DriverUpdateAdmin" method="post" class="space-y-6">
    <!-- Email -->
<div>
  <label class="block text-sm text-gray-300 mb-1" for="email">Email</label>
  <input type="email" id="email" name="email" value="${param.email}" required
         class="w-full p-2 rounded-lg bg-gray-700 text-white border border-gray-600 focus:outline-none focus:ring-2 focus:ring-yellow-400" />
</div>

      <div class="grid grid-cols-1 sm:grid-cols-2 gap-6">
        <!-- Name -->
        <div>
          <label class="block text-sm text-gray-300 mb-1" for="name">Name</label>
          <input type="text" id="name" name="name" value="${param.name}" required
                 class="w-full p-2 rounded-lg bg-gray-700 text-white border border-gray-600 focus:outline-none focus:ring-2 focus:ring-yellow-400" />
        </div>

        <!-- Age -->
        <div>
          <label class="block text-sm text-gray-300 mb-1" for="age">Age</label>
          <input type="number" id="age" min = "0" max = "100" name="age" value="${param.age}" required
                 class="w-full p-2 rounded-lg bg-gray-700 text-white border border-gray-600 focus:outline-none focus:ring-2 focus:ring-yellow-400" />
        </div>

        <!-- Contact No -->
        <div class="sm:col-span-2">
          <label class="block text-sm text-gray-300 mb-1" for="no">Contact Number</label>
          <input type="text" id="no" name="no" value="${param.no}" required
                 class="w-full p-2 rounded-lg bg-gray-700 text-white border border-gray-600 focus:outline-none focus:ring-2 focus:ring-yellow-400" />
        </div>
      </div>

      <!-- Buttons -->
      <div class="flex justify-end gap-4 pt-4">
        <a href="DriverDashboard.jsp" class="bg-gray-600 hover:bg-gray-500 text-white px-4 py-2 rounded-lg shadow transition">
          <i class="bi bi-arrow-left me-1"></i> Cancel
        </a>
        <button type="submit"
                class="bg-yellow-400 hover:bg-yellow-300 text-black px-6 py-2 rounded-lg font-semibold shadow transition">
          <i class="bi bi-save me-2"></i> Save Changes
        </button>
      </div>
    </form>
  </div>

</body>
</html>
