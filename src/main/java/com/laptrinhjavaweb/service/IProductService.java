package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.dto.ProductDTO;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface IProductService {

    List<ProductDTO> findAll();
    ProductDTO getProductById(long id);
    List<ProductDTO> findAllByPagination(Pageable pageable);
    int getTotalItem();
    List<ProductDTO> getAllProductById(long id);
    ProductDTO save(ProductDTO dto);
    void delete(long[] ids);
}
