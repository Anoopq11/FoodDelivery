<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="css/style.css?v=3">
</head>
<body>
    <div class="glass-card">
        <h2>Welcome Back</h2>

        <% if (request.getAttribute("error") != null) { %>
            <div class="alert-error"><%= request.getAttribute("error") %></div>
        <% } %>
        <% if (request.getAttribute("message") != null) { %>
            <div class="alert-success"><%= request.getAttribute("message") %></div>
        <% } %>

        <form action="login" method="post">
            <div class="form-group">
                <label>Email</label>
                <input type="email" name="email" placeholder="you@example.com" required/>
            </div>
            <div class="form-group">
                <label>Password</label>
                <input type="password" name="password" placeholder="••••••••" required/>
            </div>
            <button type="submit" class="btn-primary">Login</button>
        </form>

        <p class="link-text" style="color: #666; font-size: 14px; margin-top: 25px;">
            New here? <a href="signup.jsp">Sign up</a>
        </p>
    </div>
</body>
</html>