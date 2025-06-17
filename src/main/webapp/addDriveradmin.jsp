<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Add Driver</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
</head>
<body class="bg-gray-900 text-white min-h-screen flex items-center justify-center px-4">

  <div class="bg-gray-800 rounded-2xl shadow-xl p-10 max-w-lg w-full">
    <h2 class="text-3xl font-extrabold text-yellow-400 mb-8 text-center flex items-center justify-center">
      <i class="bi bi-person-plus-fill mr-2"></i> Add New Driver
    </h2>

    <form action="addDriveradmin" method="post" class="space-y-6">
      <div>
        <label class="block text-yellow-300 font-semibold mb-1">Driver Name</label>
        <input type="text" name="name" required
               class="w-full px-4 py-2 rounded bg-gray-700 text-white border border-gray-600 focus:outline-none focus:ring-2 focus:ring-yellow-400">
      </div>

      <div>
        <label class="block text-yellow-300 font-semibold mb-1">Email</label>
        <input type="email" name="email" required
               class="w-full px-4 py-2 rounded bg-gray-700 text-white border border-gray-600 focus:outline-none focus:ring-2 focus:ring-yellow-400">
      </div>

      <div>
        <label class="block text-yellow-300 font-semibold mb-1">Phone Number</label>
        <input type="text" name="no" required
               class="w-full px-4 py-2 rounded bg-gray-700 text-white border border-gray-600 focus:outline-none focus:ring-2 focus:ring-yellow-400">
      </div>

      <div>
        <label class="block text-yellow-300 font-semibold mb-1">Age</label>
        <input type="number" name="age" min="18" required
               class="w-full px-4 py-2 rounded bg-gray-700 text-white border border-gray-600 focus:outline-none focus:ring-2 focus:ring-yellow-400">
      </div>
           <div>
        <label class="block text-yellow-300 font-semibold mb-1">Password</label>
        <input type="number" name="pass"  required
               class="w-full px-4 py-2 rounded bg-gray-700 text-white border border-gray-600 focus:outline-none focus:ring-2 focus:ring-yellow-400">
      </div> 
 
      <div class="flex justify-between mt-8">
        <a href="AdminDashboard.jsp" class="text-yellow-300 hover:underline flex items-center">
          <i class="bi bi-arrow-left-circle mr-1"></i> Back
        </a>
        <button type="submit"
                class="bg-yellow-400 text-gray-900 px-6 py-2 rounded hover:bg-yellow-300 font-semibold flex items-center transition">
          <i class="bi bi-plus-circle mr-2"></i>Add Driver
        </button>
      </div>
    </form>
  </div>

</body>
</html>
