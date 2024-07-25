<%-- 
    Document   : ordersummary
    Created on : Apr 2, 2024, 10:43:05 PM
    Author     : shrey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Summary</title>
    <style>
        /* CSS styles for better presentation */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        th, td {
            padding: 10px;
            border-bottom: 1px solid #ddd;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        .total {
            font-weight: bold;
        }
        .checkout-button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Order Summary</h2>
        <table>
            <thead>
                <tr>
                    <th id="name">Item</th>
                    <th id="qty">Quantity</th>
                    <th id="total">Total</th>
                </tr>
            </thead>
            <tbody>
               
            </tbody>
        </table>
        <div class="total">
            <strong>Total Amount:</strong> Rs 0.00 <!-- Replace with actual total amount -->
        </div>
        <a href="payment.html" class="checkout-button">Proceed to Checkout</a>
    </div>
    <script href="order.js"></script>
</body>
</html>
