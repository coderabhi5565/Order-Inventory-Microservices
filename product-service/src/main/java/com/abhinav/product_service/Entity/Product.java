package com.abhinav.product_service.Entity;

public class Product {
    private UUID id;
    private String sku;
    private String name;
    private String description;
    private String category;
    private BigDecimal price;
    private boolean active;
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;
}
