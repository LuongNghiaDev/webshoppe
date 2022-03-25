package com.laptrinhjavaweb.service.impl;

import com.laptrinhjavaweb.converter.CategoryConverter;
import com.laptrinhjavaweb.dto.CategoryDTO;
import com.laptrinhjavaweb.dto.MenusDTO;
import com.laptrinhjavaweb.entity.CategorysEntity;
import com.laptrinhjavaweb.entity.MenusEntity;
import com.laptrinhjavaweb.repository.CategoryRepository;
import com.laptrinhjavaweb.service.ICategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class CategoryService implements ICategoryService {

    @Autowired
    private CategoryRepository categoryRepository;

    @Autowired
    private CategoryConverter categoryConverter;

    @Override
    public List<CategoryDTO> finAll() {
        List<CategoryDTO> model = new ArrayList<>();
        List<CategorysEntity> entities = categoryRepository.findAll();
        for (CategorysEntity item : entities){
            CategoryDTO dto = categoryConverter.toDto(item);
            model.add(dto);
        }
        return model;
    }

    @Override
    public Map<String, String> findAllCategory() {
        Map<String,String> result = new HashMap<>();
        List<CategorysEntity> entities = categoryRepository.findAll();
        for (CategorysEntity item : entities){
            result.put(item.getCode(),item.getName());
        }
        return result;
    }
}
