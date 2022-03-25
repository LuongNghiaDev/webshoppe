package com.laptrinhjavaweb.repository;

import com.laptrinhjavaweb.entity.BillEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface BillRepository extends JpaRepository<BillEntity,Long> {

    @Query("select max(id) from BillEntity")
    long getIdBill();
}
