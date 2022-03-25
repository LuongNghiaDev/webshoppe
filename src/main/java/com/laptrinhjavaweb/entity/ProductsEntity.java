package com.laptrinhjavaweb.entity;


import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "product")
public class ProductsEntity extends BaseEntity {

    @Column(name = "size")
    private String size;

    @Column(name = "name")
    private String name;

    @Column(name = "price")
    private double price;

    @Column(name = "sale")
    private int sale;

    @Column(name = "title")
    private String title;

    @Column(name = "highlight")
    private boolean highlight;

    @Column(name = "newproduct")
    private boolean newproduct;

    @Column(name = "detail")
    private String detail;

    @Column(name = "categorycode")
    private String categoryCode;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "category_id")
    private CategorysEntity category;

    @OneToMany(mappedBy = "products")
    private List<BillDetailEntity> billDetail = new ArrayList<>();

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "colors_id")
    private ColorsEntity colors;

    public ColorsEntity getColors() {
        return colors;
    }

    public void setColors(ColorsEntity colors) {
        this.colors = colors;
    }

    public List<BillDetailEntity> getBillDetail() {
        return billDetail;
    }

    public void setBillDetail(List<BillDetailEntity> billDetail) {
        this.billDetail = billDetail;
    }

    public CategorysEntity getCategory() {
        return category;
    }

    public void setCategory(CategorysEntity category) {
        this.category = category;
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

    public String getCategoryCode() {
        return categoryCode;
    }

    public void setCategoryCode(String categoryCode) {
        this.categoryCode = categoryCode;
    }
}
