package com.laptrinhjavaweb.repository;

import com.laptrinhjavaweb.entity.ColorsEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ColorsRepository extends JpaRepository<ColorsEntity,Long> {
    ColorsEntity findOneByCode(String code);
    ColorsEntity findOneById(Long id);
}
