package com.laptrinhjavaweb.repository;

import com.laptrinhjavaweb.entity.SlidesEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SlideRepository extends JpaRepository<SlidesEntity,Long> {
}
