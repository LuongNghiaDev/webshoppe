package com.laptrinhjavaweb.converter;

import com.laptrinhjavaweb.dto.CategoryDTO;
import com.laptrinhjavaweb.entity.CategorysEntity;
import org.springframework.stereotype.Component;

@Component
public class CategoryConverter {

    public CategoryDTO toDto(CategorysEntity entity){
        CategoryDTO result = new CategoryDTO();
        result.setId(entity.getId());
        result.setName(entity.getName());
        result.setCode(entity.getCode());
        return result;
    }

    public CategorysEntity toEntity(CategoryDTO dto){
        CategorysEntity result = new CategorysEntity();
        result.setName(dto.getName());
        result.setCode(dto.getCode());
        return result;
    }
}
