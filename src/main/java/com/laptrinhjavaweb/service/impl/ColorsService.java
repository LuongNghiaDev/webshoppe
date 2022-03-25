package com.laptrinhjavaweb.service.impl;

import com.laptrinhjavaweb.entity.ColorsEntity;
import com.laptrinhjavaweb.repository.ColorsRepository;
import com.laptrinhjavaweb.service.IColorsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class ColorsService implements IColorsService {

    @Autowired
    private ColorsRepository colorsRepository;

    @Override
    public Map<String, String> findAllCategory() {
        Map<String,String> result = new HashMap<>();
        List<ColorsEntity> entity = colorsRepository.findAll();
        for (ColorsEntity item : entity){
            result.put(item.getCode(),item.getName());
        }
        return result;
    }
}
