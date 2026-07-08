<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Sign Up</title>
    <link rel="stylesheet" href="css/style.css?v=3">
</head>
<body>
    <div class="glass-card">
        <h2>Create an Account</h2>

        <% if (request.getAttribute("error") != null) { %>
            <div class="alert-error"><%= request.getAttribute("error") %></div>
        <% } %>

        <form action="signup" method="post">
            <div class="form-group">
                <label>Name</label>
                <input type="text" name="name" placeholder="Your name" required/>
            </div>
            <div class="form-group">
                <label>Email</label>
                <input type="email" name="email" placeholder="you@example.com" required/>
            </div>
            <div class="form-group">
                <label>Password</label>
                <input type="password" name="password" placeholder="••••••••" required/>
            </div>
            <div class="form-group">
                <label>Phone</label>
                <input type="text" name="phone" placeholder="Phone number"/>
            </div>
            <div class="form-group">
                <label>Address</label>
                <input type="text" name="address" placeholder="Delivery address"/>
            </div>
            <button type="submit" class="btn-primary">Sign Up</button>
        </form>

        <p class="link-text" style="color: #666; font-size: 14px; margin-top: 25px;">
            Already have an account? <a href="login">Log in</a>
        </p>
    </div>
</body>
</html>