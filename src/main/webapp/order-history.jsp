<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.fooddelivery.model.Order" %>
<html>
<head>
    <title>Order History</title>
    <link rel="stylesheet" href="css/style.css?v=3">
</head>
<body>
    <div class="page-wrapper">
        <h1>Your Past Orders</h1>

        <%
            List<Order> orders = (List<Order>) request.getAttribute("orders");
        %>

        <% if (orders == null || orders.isEmpty()) { %>
            <p style="text-align: center; margin-top: 40px; color: #666;">You haven't placed any orders yet.</p>
        <% } else { %>
            <div class="grid-container">
                <% for (Order o : orders) { %>
                    <div class="item-card" style="display: flex; flex-direction: column;">
                        <div class="menu-item-row" style="margin-bottom: 10px;">
                            <h3>Order #<%= o.getOrderId() %></h3>
                            <span class="price-tag" style="font-size: 18px;">₹<%= o.getTotalAmount() %></span>
                        </div>
                        
                        <div style="margin-bottom: 15px;">
                            <span class="cuisine-tag"><%= o.getStatus() %></span>
                            <p style="color: #888; font-size: 13px; margin-top: 8px;">Placed on: <%= o.getOrderDate() %></p>
                        </div>
                        
                        <div style="margin-top: auto; text-align: right;">
                            <a href="order-details?orderId=<%= o.getOrderId() %>" class="add-cart-btn" style="text-decoration: none; display: inline-block; font-size: 14px;">View Details →</a>
                        </div>
                    </div>
                <% } %>
            </div>
        <% } %>

        <br/>
        <p class="link-text" style="text-align: left; margin-top: 30px;">
            <a href="home.jsp" style="color: #666; font-weight: 500;">← Back to Home</a>
        </p>
    </div>
</body>
</html>