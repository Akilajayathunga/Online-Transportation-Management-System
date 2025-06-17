<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Payment</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
</head>
<body class="bg-gray-900 text-white min-h-screen flex items-center justify-center">


<c:set var="p" value="${payment}" />

<div class="bg-gray-800 p-8 rounded-xl shadow-lg w-full max-w-md border border-blue-400">
    <h2 class="text-2xl font-bold mb-6 text-blue-400 text-center">
        <i class="bi bi-pencil-square"></i> Edit Payment Details
    </h2>

    <form action="payUpdate" method="post" class="space-y-4">
        <input type="hidden" name="id" value="${param.id}">

        <div>
            <label class="block text-sm text-yellow-400 mb-1">Card Number</label>
            <input type="text" name="cardNumber" value="${param.cardnumber}" required
                   class="w-full px-3 py-2 rounded bg-gray-700 border border-gray-600 text-white">
        </div>

        <div>
            <label class="block text-sm text-yellow-400 mb-1">CVV</label>
            <input type="text" name="cvv" value="${param.cvv}" required
                   class="w-full px-3 py-2 rounded bg-gray-700 border border-gray-600 text-white">
        </div>

        <div>
            <label class="block text-sm text-yellow-400 mb-1">Expiry Date</label>
            <input type="text" name="expiry" value="${param.expiry}" required
                   class="w-full px-3 py-2 rounded bg-gray-700 border border-gray-600 text-white">
        </div>

        <div>
            <label class="block text-sm text-yellow-400 mb-1">Amount</label>
            <input type="text" name="payment" value="${param.payment}"readonly
                   class="w-full px-3 py-2 rounded bg-gray-700 border border-gray-600 text-white">
        </div>

        <div class="mt-6 flex justify-between">
            <button type="submit"
                    class="px-4 py-2 bg-green-500 text-white rounded hover:bg-green-400 transition">
                <i class="bi bi-check-circle"></i> Save Changes
            </button>
         
        </div>
    </form>
</div>
</body>
</html>
