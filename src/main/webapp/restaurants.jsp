<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.fooddelivery.model.Restaurant" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Restaurants</title>
    <link rel="stylesheet" href="css/style.css?v=3">
</head>
<body>
<div class="page-wrapper">
    <h1>Hungry? Your favorites, delivered.</h1>

    <div class="hero-search">
        <input type="text" placeholder="Search restaurants or cuisines..." disabled>
    </div>

    <%
        List<Restaurant> restaurants = (List<Restaurant>) request.getAttribute("restaurants");
    %>

    <% if (restaurants == null || restaurants.isEmpty()) { %>
        <p style="color:#666; text-align:center; font-size:20px; margin-top: 50px;">
            No restaurants available right now. Check back later!
        </p>
    <% } else { %>
        <div class="grid-container">
            <% for (Restaurant r : restaurants) { %>
                <div class="item-card">
                    <a href="menu?restaurantId=<%=r.getRestaurantId()%>" style="display: block; height: 100%;">
                        <img src="<%=r.getImageUrl()%>" alt="<%=r.getName()%>" onerror="this.src='https://picsum.photos/400/250?random=<%=r.getRestaurantId()%>'">
                        <span class="cuisine-tag"><%=r.getCuisine()%></span>
                        <h3 style="margin-top: 5px;"><%=r.getName()%></h3>
                        <p style="color: #666; font-size: 14px; margin-bottom: 0;">📍 <%=r.getAddress()%></p>
                    </a>
                </div>
            <% } %>
        </div>
    <% } %>
</div>
<script>
window.onload = function () { window.scrollTo(0, 0); };
</script>
</body>
</html>