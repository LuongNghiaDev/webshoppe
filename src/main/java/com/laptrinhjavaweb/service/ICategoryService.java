package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.dto.CategoryDTO;

import java.util.List;
import java.util.Map;

public interface ICategoryService {

    List<CategoryDTO> finAll();
    Map<String, String> findAllCategory();
}
