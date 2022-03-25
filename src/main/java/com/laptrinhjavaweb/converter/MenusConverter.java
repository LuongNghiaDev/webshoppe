package com.laptrinhjavaweb.converter;

import com.laptrinhjavaweb.dto.MenusDTO;
import com.laptrinhjavaweb.entity.MenusEntity;
import org.springframework.stereotype.Component;

@Component
public class MenusConverter {

    public MenusDTO toDto(MenusEntity entity){
        MenusDTO result = new MenusDTO();
        result.setId(entity.getId());
        result.setName(entity.getName());
        result.setUrl(entity.getUrl());
        return result;
    }

    public MenusEntity toEntity(MenusDTO dto){
        MenusEntity result = new MenusEntity();
        result.setName(dto.getName());
        result.setUrl(dto.getUrl());
        return result;
    }
}
