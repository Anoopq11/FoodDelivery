<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Checkout</title>
    <link rel="stylesheet" href="css/style.css?v=2">
</head>
<body>
    <div class="page-wrapper">
        <h1>Checkout</h1>

        <div class="glass-card" style="margin-top: 20px;">
            <% if (request.getAttribute("error") != null) { %>
                <div class="alert-error">
                    <%= request.getAttribute("error") %>
                </div>
            <% } %>

            <form action="checkout" method="post">
                <div class="form-group">
                    <label>Delivery Address</label>
                    <input type="text" name="address" placeholder="Enter your full address" required />
                </div>

                <div class="form-group">
                    <label>Payment Method</label>
                    <select name="paymentMethod" style="width: 100%; padding: 12px; border: 1px solid #ccc; border-radius: 6px; background: #fff; color: #333; outline: none;">
                        <option value="Cash on Delivery">Cash on Delivery</option>
                        <option value="Card">Credit / Debit Card</option>
                        <option value="UPI">UPI</option>
                    </select>
                </div>

                <br/>
                <button type="submit" class="btn-primary">Place Order</button>
            </form>
            
            <p class="link-text" style="margin-top: 20px;"><a href="cart">← Back to Cart</a></p>
        </div>
    </div>
</body>
</html>