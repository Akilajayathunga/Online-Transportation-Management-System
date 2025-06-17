<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Update Contact Message</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <!-- Tailwind CSS -->
  <script src="https://cdn.tailwindcss.com"></script>
  
  <!-- Icons -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
  
  <!-- Font -->
  <link href="https://fonts.googleapis.com/css2?family=Cuprum:wght@400;600;700&display=swap" rel="stylesheet">
  
  <style>
    body {
      font-family: 'Cuprum', sans-serif;
    }
  </style>
</head>

<body class="min-h-screen bg-gradient-to-br from-green-100 via-blue-100 to-purple-200 flex items-center justify-center p-4">




  <form action="updateContact" method="post" class="bg-white shadow-xl rounded-2xl p-8 w-full max-w-lg border border-gray-200">
    <h2 class="text-2xl font-bold text-center mb-6 text-gray-800">
      <i class="fas fa-pen-to-square mr-2 text-green-600"></i> Update Message
    </h2>

    <!-- Email (Read-only) -->
    <div class="mb-4">
      <label for="email" class="block text-gray-700 font-medium mb-2">Email (readonly)</label>
      <input type="text" id="email" name="email" value="${param.email}" readonly
        class="w-full bg-gray-100 text-gray-800 border border-gray-300 px-4 py-2 rounded focus:outline-none">
    </div>

    <!-- Name -->
    <div class="mb-4">
      <label for="name" class="block text-gray-700 font-medium mb-2">Name</label>
      <input type="text" id="name" name="name" value="${param.name}" required
        class="w-full border border-gray-300 px-4 py-2 rounded focus:outline-none focus:ring-2 focus:ring-blue-500">
    </div>

    <!-- Message -->
    <div class="mb-4">
      <label for="msg" class="block text-gray-700 font-medium mb-2">Message</label>
      <textarea id="msg" name="msg" rows="4" required
        class="w-full border border-gray-300 px-4 py-2 rounded focus:outline-none focus:ring-2 focus:ring-blue-500">${param.msg}</textarea>
    </div>

    <!-- Date -->
    <div class="mb-6">
      <label for="date" class="block text-gray-700 font-medium mb-2">Date</label>
      <input type="date" id="date" name="date" value="${param.date}" required
        class="w-full border border-gray-300 px-4 py-2 rounded focus:outline-none focus:ring-2 focus:ring-blue-500">
    </div>

    <!-- Submit Button -->
    <button type="submit"
      class="w-full flex items-center justify-center bg-green-600 hover:bg-green-700 text-white font-semibold py-2 px-4 rounded transition duration-200">
      <i class="fas fa-check-circle mr-2"></i> Save Changes
    </button>

    <!-- Back Button -->
    <div class="mt-4 text-center">
      <a href="Contactus.jsp"
        class="inline-flex items-center text-yellow-600 hover:text-yellow-700 font-medium transition duration-200">
        <i class="fas fa-arrow-left mr-1"></i> Back to Contact Us
      </a>
    </div>
  </form>

</body>
</html>
