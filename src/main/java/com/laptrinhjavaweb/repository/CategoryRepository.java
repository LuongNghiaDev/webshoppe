package com.laptrinhjavaweb.repository;

import com.laptrinhjavaweb.entity.CategorysEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CategoryRepository extends JpaRepository<CategorysEntity,Long> {
    CategorysEntity findOneByCode(String code);
}
