package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.dto.SlidesDTO;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface ISlideService {

    List<SlidesDTO> findAll();
    int getTotalItem();
    List<SlidesDTO> findAllPagination(Pageable pageable);
    SlidesDTO save(SlidesDTO dto);
    void delete(long[] ids);
    SlidesDTO getSlideById(long id);
}
