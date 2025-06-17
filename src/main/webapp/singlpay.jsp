<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Payment Details</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
</head>
<body class="bg-gray-900 text-white min-h-screen flex items-center justify-center">
    <c:set var="p" value="${li1}" />
    
    <div class="bg-gray-800 p-8 rounded-xl shadow-lg w-full max-w-md border border-yellow-400">
        <h2 class="text-2xl font-bold mb-6 text-yellow-400 text-center">
            <i class="bi bi-credit-card-2-front"></i> Payment Details
        </h2>

        <div class="space-y-4 text-white text-sm">
            <p><span class="text-yellow-400 font-semibold"><i class="bi bi-hash"></i> Payment ID:</span> ${p.id}</p>
            <p><span class="text-yellow-400 font-semibold"><i class="bi bi-credit-card"></i> Card Number:</span> ${p.cardNumber}</p>
            <p><span class="text-yellow-400 font-semibold"><i class="bi bi-shield-lock"></i> CVV:</span> ${p.cvv}</p>
            <p><span class="text-yellow-400 font-semibold"><i class="bi bi-calendar"></i> Expiry Date:</span> ${p.expiry}</p>
            <p><span class="text-yellow-400 font-semibold"><i class="bi bi-cash-stack"></i> Amount Paid:</span> Rs. ${p.payment}</p>
        </div>

        <div class="mt-6 text-center">
            <a href="Home.jsp" class="inline-block px-4 py-2 bg-yellow-400 text-black rounded hover:bg-yellow-300 transition">
                <i class="bi bi-arrow-left-circle-fill"></i> Back
            </a>
            
            <form action = "EditPay.jsp" method = "Post">
            <div class="mt-6 flex flex-col sm:flex-row gap-3 justify-center">
            <input type = "hidden" name = "id" value = "${p.id}">
            <input type = "hidden" name = "cardnumber" value = "${p.cardNumber}">
            <input type = "hidden" name = "cvv" value = "${p.cvv}">
            <input type = "hidden" name = "expiry" value = "${p.expiry}">
            <input type = "hidden" name = "payment" value = "${p.payment}">
    <button  class="px-4 py-2 bg-blue-500 text-white rounded hover:bg-blue-400 transition">
        <i class="bi bi-pencil-square"></i> Edit
    </button>
            </form>
    <form action = "payDelete" method = "Post">    
     
     <input type = "hidden" name = "id" value = "${p.id}">
    <button class="px-4 py-2 bg-red-500 text-white rounded hover:bg-red-400 transition">
        <i class="bi bi-x-circle-fill"></i> Cancel Payment
    </button>
 </form>
</div>
            
        </div>
    </div>
</body>
</html>
