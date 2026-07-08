<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.fooddelivery.model.MenuItem" %>
<%@ page import="com.fooddelivery.model.Restaurant" %>
<html>
<head>
    <title>Menu</title>
    <link rel="stylesheet" href="css/style.css?v=2">
</head>
<body>
    <div class="page-wrapper">
        <%
            Restaurant restaurant = (Restaurant) request.getAttribute("restaurant");
            List<MenuItem> menuItems = (List<MenuItem>) request.getAttribute("menuItems");
        %>

        <% if (restaurant == null) { %>
            <p style="text-align: center; margin-top: 40px; color: #666;">Restaurant not found.</p>
        <% } else { %>
            
            <!-- Flex container keeps Title and Cart button on the same line -->
            <div class="menu-header-row" style="margin-bottom: 10px;">
                <h1 style="margin-bottom: 0;"><%= restaurant.getName() %></h1>
                <a href="cart" class="cart-link" style="font-size: 16px;">🛒 View Cart</a>
            </div>
            
            <!-- Changed text color to a readable gray and added a location pin -->
            <p style="color: #666; margin-bottom: 30px;">
                <span class="cuisine-tag"><%= restaurant.getCuisine() %></span>
                <span style="margin-left: 10px;">📍 <%= restaurant.getAddress() %></span>
            </p>

            <% if (menuItems == null || menuItems.isEmpty()) { %>
                <p style="text-align: center; margin-top: 40px; color: #666;">No menu items available yet.</p>
            <% } else { %>
                <div class="grid-container">
                    <% for (MenuItem item : menuItems) { %>
                        <div class="item-card">
                            <div class="menu-item-row">
                                <h3><%= item.getItemName() %></h3>
                                <span class="price-tag">₹<%= item.getPrice() %></span>
                            </div>
                            
                            <!-- Set a minimum height so cards align nicely even if descriptions vary in length -->
                            <p style="min-height: 40px; margin-bottom: 10px;"><%= item.getDescription() %></p>
                            
                            <form action="add-to-cart" method="post" style="text-align: right;">
                                <input type="hidden" name="itemId" value="<%= item.getItemId() %>"/>
                                <input type="hidden" name="restaurantId" value="<%= restaurant.getRestaurantId() %>"/>
                                <button type="submit" class="add-cart-btn">+ Add</button>
                            </form>
                        </div>
                    <% } %>
                </div>
            <% } %>
        <% } %>

        <br/>
        <!-- Aligned back button to the left and toned down the color -->
        <p class="link-text" style="text-align: left; margin-top: 30px;">
            <a href="restaurants" style="color: #666; text-decoration: none; font-weight: 500;">← Back to Restaurants</a>
        </p>
    </div>
</body>
</html>