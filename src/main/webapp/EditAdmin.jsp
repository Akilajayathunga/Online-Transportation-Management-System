<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Edit Admin</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
</head>
<body class="bg-gray-900 text-white min-h-screen flex items-center justify-center">

  <div class="bg-gray-800 p-8 rounded-2xl shadow-lg w-full max-w-md">
    <h2 class="text-3xl font-bold text-yellow-400 mb-6 text-center">
      <i class="bi bi-pencil-square mr-2"></i>Edit Admin Profile
    </h2>

    <form action="EditAdmin" method="post" class="space-y-5">

      <!-- Name -->
      <div>
        <label class="block mb-1 text-yellow-300 font-semibold" for="name">Name</label>
        <input type="text" id="name" name="name" value="${param.name}" required
               class="w-full px-4 py-2 rounded bg-gray-700 text-white border border-gray-600 focus:outline-none focus:ring-2 focus:ring-yellow-400">
      </div>

      <!-- Email (read-only) -->
      <div>
        <label class="block mb-1 text-yellow-300 font-semibold" for="email">Email</label>
        <input type="email" id="email" name="email" value="${param.email}" readonly
               class="w-full px-4 py-2 rounded bg-gray-600 text-gray-400 border border-gray-600 cursor-not-allowed">
      </div>

      <!-- Contact -->
      <div>
        <label class="block mb-1 text-yellow-300 font-semibold" for="contact">Phone</label>
        <input type="text" id="contact" name="contact" value="${param.contact}" required
               class="w-full px-4 py-2 rounded bg-gray-700 text-white border border-gray-600 focus:outline-none focus:ring-2 focus:ring-yellow-400">
      </div>

      <!-- Age -->
      <div>
        <label class="block mb-1 text-yellow-300 font-semibold" for="age">Age</label>
        <input type="number" id="age" name="age" value="${param.age}" required min="18" max="100"
               class="w-full px-4 py-2 rounded bg-gray-700 text-white border border-gray-600 focus:outline-none focus:ring-2 focus:ring-yellow-400">
      </div>

      <!-- Submit -->
      <button type="submit"
              class="w-full bg-yellow-400 text-gray-900 font-semibold py-2 px-4 rounded hover:bg-yellow-300 transition">
        <i class="bi bi-check-circle mr-2"></i>Save Changes
      </button>
    </form>
  </div>

</body>
</html>
