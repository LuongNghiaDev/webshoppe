package com.laptrinhjavaweb.dto;

public class ProductDTO extends AbstractDTO<ProductDTO>{

    private int categoryId;
    private String size;
    private String name;
    private double price;
    private int sale;
    private String title;
    private boolean highlight;
    private boolean newproduct;
    private String detail;
    private long colorsId;
    private String categoryCode;
    private String colorsImg;
    private String colorsCode;

    public String getColorsCode() {
        return colorsCode;
    }

    public void setColorsCode(String colorsCode) {
        this.colorsCode = colorsCode;
    }

    public String getColorsImg() {
        return colorsImg;
    }

    public void setColorsImg(String colorsImg) {
        this.colorsImg = colorsImg;
    }

    public String getCategoryCode() {
        return categoryCode;
    }

    public void setCategoryCode(String categoryCode) {
        this.categoryCode = categoryCode;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getSale() {
        return sale;
    }

    public void setSale(int sale) {
        this.sale = sale;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public boolean isHighlight() {
        return highlight;
    }

    public void setHighlight(boolean highlight) {
        this.highlight = highlight;
    }

    public boolean isNewproduct() {
        return newproduct;
    }

    public void setNewproduct(boolean newproduct) {
        this.newproduct = newproduct;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public long getColorsId() {
        return colorsId;
    }

    public void setColorsId(long colorsId) {
        this.colorsId = colorsId;
    }

}
