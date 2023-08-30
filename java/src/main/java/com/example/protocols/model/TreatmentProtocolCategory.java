package com.example.protocols.model;

public class TreatmentProtocolCategory {
    private int categoryId;
    private String categoryName;

    public TreatmentProtocolCategory(int categoryId, String categoryName) {
        this.categoryId = categoryId;
        this.categoryName = categoryName;
    }

    public TreatmentProtocolCategory() {}

    public int getCategoryId() {
        return categoryId;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }
}
