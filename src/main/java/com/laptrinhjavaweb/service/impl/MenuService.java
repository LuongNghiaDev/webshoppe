package com.laptrinhjavaweb.service.impl;

import com.laptrinhjavaweb.converter.MenusConverter;
import com.laptrinhjavaweb.dto.MenusDTO;
import com.laptrinhjavaweb.entity.MenusEntity;
import com.laptrinhjavaweb.repository.MenusRopository;
import com.laptrinhjavaweb.service.IMenusService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class MenuService implements IMenusService {

    @Autowired
    private MenusRopository menusRopository;

    @Autowired
    private MenusConverter menusConverter;

    @Override
    public List<MenusDTO> findAll() {
        List<MenusDTO> model = new ArrayList<>();
        List<MenusEntity> entities = menusRopository.findAll();
        for (MenusEntity item : entities){
            MenusDTO dto = menusConverter.toDto(item);
            model.add(dto);
        }
        return model;
    }
}
