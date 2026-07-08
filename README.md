# 🍔 FoodDelivery Web Application

A simple online food delivery web application developed using Java Web Technologies.

This project allows users to browse restaurants, view food menus, add items to orders, and manage food delivery operations.

---

## 🚀 Features

- User Registration and Login
- View Restaurants
- View Food Menu
- Add Food Items to Order
- Manage Orders
- Database Connectivity using JDBC
- Simple and User-Friendly Interface

---

## 🛠️ Technologies Used

### Frontend
- HTML
- CSS
- JavaScript (if required)

### Backend
- Java 17
- Java Servlet
- JSP
- JDBC

### Database
- MySQL 8.0

### Tools
- Eclipse IDE
- Apache Tomcat 10.1
- Maven
- Git & GitHub

---

## 📂 Project Structure

```
FoodDelivery
│
├── src/main/java
│   └── com.fooddelivery
│       ├── controller
│       ├── dao
│       ├── model
│       └── dbutil
│
├── src/main/webapp
│   ├── css
│   ├── images
│   ├── jsp pages
│   └── WEB-INF
│
├── pom.xml
└── README.md
```

---

## 🗄️ Database Tables

The project uses MySQL database with the following tables:

- User
- Restaurant
- Menu
- Orders
- OrderItem

---

## ⚙️ Installation and Setup

### 1. Clone Repository

```
git clone https://github.com/Anoopq11/FoodDelivery.git
```

### 2. Import Project

- Open Eclipse IDE
- Select File → Import
- Import as Maven Project

### 3. Configure Database

Create a MySQL database:

```
CREATE DATABASE fooddelivery;
```

Update database details in:

```
DBUtil.java
```

Example:

```
username = "root"
password = "your_password"
database = "fooddelivery"
```

---

### 4. Run Application

- Configure Apache Tomcat 10.1
- Run project on server
- Open browser:

```
http://localhost:8080/FoodDelivery
```

---

## 📸 Screenshots

(Add screenshots of your application here)

---

## 🔮 Future Improvements

- Online Payment Integration
- Food Delivery Tracking
- Admin Dashboard
- Restaurant Management Panel
- User Reviews and Ratings

---

## 👨‍💻 Author

**Anoop Naik**

GitHub:
https://github.com/Anoopq11

---

## 📄 License

This project is created for learning and educational purposes.
