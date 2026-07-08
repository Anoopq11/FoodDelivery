package com.fooddelivery.model;

public class MenuItem {
    private int itemId;
    private int restaurantId;
    private String itemName;
    private double price;
    private String description;

    public MenuItem() {}

    public MenuItem(int itemId, int restaurantId, String itemName, double price, String description) {
        this.itemId = itemId;
        this.restaurantId = restaurantId;
        this.itemName = itemName;
        this.price = price;
        this.description = description;
    }

    public int getItemId() { return itemId; }
    public void setItemId(int itemId) { this.itemId = itemId; }

    public int getRestaurantId() { return restaurantId; }
    public void setRestaurantId(int restaurantId) { this.restaurantId = restaurantId; }

    public String getItemName() { return itemName; }
    public void setItemName(String itemName) { this.itemName = itemName; }

    public double getPrice() { return price; }
    public void setPrice(double price) { this.price = price; }

    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }
}