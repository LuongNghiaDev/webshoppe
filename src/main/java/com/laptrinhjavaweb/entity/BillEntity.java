package com.laptrinhjavaweb.entity;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "bill")
public class BillEntity extends BaseEntity {

    @Column(name = "username")
    private String userName;

    @Column(name = "phone")
    private String phone;

    @Column(name = "fullname")
    private String fullName;

    @Column(name = "address")
    private String address;

    @Column(name = "note")
    private String note;

    @Column(name = "quanty")
    private int quanty;

    @Column(name = "total")
    private double total;

    @OneToMany(mappedBy = "bills")
    private List<BillDetailEntity> billdetails = new ArrayList<>();


    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public int getQuanty() {
        return quanty;
    }

    public void setQuanty(int quanty) {
        this.quanty = quanty;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public List<BillDetailEntity> getBilldetails() {
        return billdetails;
    }

    public void setBilldetails(List<BillDetailEntity> billdetails) {
        this.billdetails = billdetails;
    }
}
