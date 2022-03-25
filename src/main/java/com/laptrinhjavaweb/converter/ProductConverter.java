package com.laptrinhjavaweb.converter;

import com.laptrinhjavaweb.dto.ProductDTO;
import com.laptrinhjavaweb.entity.ColorsEntity;
import com.laptrinhjavaweb.entity.ProductsEntity;
import org.springframework.stereotype.Component;

@Component
public class ProductConverter {

    public ProductDTO toDto(ProductsEntity entity){
        ProductDTO result = new ProductDTO();
        result.setId(entity.getId());
        result.setName(entity.getName());
        result.setSize(entity.getSize());
        result.setPrice(entity.getPrice());
        result.setSale(entity.getSale());
        result.setHighlight(entity.isHighlight());
        result.setNewproduct(entity.isNewproduct());
        result.setDetail(entity.getDetail());
        result.setCategoryCode(entity.getCategory().getCode());
        result.setColorsImg(entity.getColors().getImg());
        result.setColorsCode(entity.getColors().getCode());
        return result;
    }

    public ProductsEntity toEntity(ProductDTO dto){
        ProductsEntity result = new ProductsEntity();
        result.setName(dto.getName());
        result.setSize(dto.getSize());
        result.setPrice(dto.getPrice());
        result.setSale(dto.getSale());
        result.setHighlight(dto.isHighlight());
        result.setNewproduct(dto.isNewproduct());
        result.setDetail(dto.getDetail());
        return result;
    }

    public ProductsEntity toEntity(ProductsEntity result ,ProductDTO dto){
        result.setName(dto.getName());
        result.setSize(dto.getSize());
        result.setPrice(dto.getPrice());
        result.setSale(dto.getSale());
        result.setHighlight(dto.isHighlight());
        result.setNewproduct(dto.isNewproduct());
        result.setDetail(dto.getDetail());
        return result;
    }
}
