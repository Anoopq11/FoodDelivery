<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="com.fooddelivery.model.User" %>
<%
    User user = (User) session.getAttribute("loggedInUser");
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<html>
<head>
    <title>Home</title>
    <link rel="stylesheet" href="css/style.css?v=3">
</head>
<body>
    <div class="glass-card" style="text-align: center;">
        <h2>Welcome, <%= user.getName() %>!</h2>
        <p style="color: #666; margin-bottom: 25px;">You are logged in as <%= user.getEmail() %>.</p>
        
        <div style="display: flex; flex-direction: column; gap: 20px; margin-bottom: 20px;">
            <a href="restaurants" class="btn-primary" style="text-decoration: none; display: block;">Browse Restaurants</a>
            <a href="order-history" class="add-cart-btn" style="text-decoration: none; display: block;">My Orders</a>
        </div>

        <p class="link-text" style="font-size: 14px; margin-top: 30px;"><a href="login" style="color: #999;">Logout</a></p>
    </div>
</body>
</html>