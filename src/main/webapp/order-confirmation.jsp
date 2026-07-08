<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.fooddelivery.model.Order" %>
<%@ page import="com.fooddelivery.model.OrderItem" %>
<html>
<head>
    <title>Order Confirmed</title>
    <link rel="stylesheet" href="css/style.css?v=3">
</head>
<body>
    <div class="page-wrapper">
        <h1 style="color: #ff5e62; margin-bottom: 10px;">🎉 Order Placed!</h1>
        <p style="text-align: center; color: #666; margin-bottom: 30px;">Thank you for your order. We're preparing it now.</p>

        <%
            Order order = (Order) request.getAttribute("order");
            List<OrderItem> items = (List<OrderItem>) request.getAttribute("items");
        %>

        <div class="glass-card" style="margin: 0 auto 30px auto; max-width: 600px; padding: 25px;">
            <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 15px;">
                <h3 style="margin: 0; font-size: 18px;">Order #<%= order.getOrderId() %></h3>
                <span class="cuisine-tag" style="margin: 0;"><%= order.getStatus() %></span>
            </div>
            
            <p style="color: #555; margin-bottom: 10px;"><strong>📍 Delivering to:</strong> <%= order.getDeliveryAddress() %></p>
            <p style="color: #555; margin-bottom: 0;"><strong>💳 Payment:</strong> <%= order.getPaymentMethod() %></p>
        </div>

        <h2 style="font-size: 22px; margin-bottom: 20px; color: #333;">Your Items</h2>

        <div class="grid-container">
            <% for (OrderItem oi : items) { %>
                <div class="item-card">
                    <div class="menu-item-row">
                        <h3><%= oi.getItemName() %></h3>
                        <span class="price-tag">₹<%= oi.getSubtotal() %></span>
                    </div>
                    <p style="color: #666; margin-top: 5px;">Qty: <%= oi.getQuantity() %></p>
                </div>
            <% } %>
        </div>

        <h2 style="text-align: right; margin-top: 30px; font-size: 28px; color: #333;">Total: ₹<%= order.getTotalAmount() %></h2>

        <p class="link-text" style="margin-top: 40px;">
            <a href="restaurants" class="btn-primary" style="text-decoration: none; display: inline-block; width: auto; padding: 12px 24px;">← Order from another restaurant</a>
        </p>
    </div>
</body>
</html>