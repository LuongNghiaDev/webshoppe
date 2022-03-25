package com.laptrinhjavaweb.repository;

import com.laptrinhjavaweb.entity.ProductsEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ProductRepository extends JpaRepository<ProductsEntity,Long> {

    @Query(value = "select p.* from ProductsEntity p where p.category_id= :id" ,nativeQuery = true)
    List<ProductsEntity> getAllProductById(@Param("id") long id);
}
