package com.laptrinhjavaweb.converter;

import com.laptrinhjavaweb.dto.ColorsDTO;
import com.laptrinhjavaweb.entity.ColorsEntity;
import org.springframework.stereotype.Component;

@Component
public class ColorsConverter {

    public ColorsDTO toDto(ColorsEntity entity){
        ColorsDTO result = new ColorsDTO();
        result.setId(entity.getId());
        result.setCode(entity.getCode());
        result.setName(entity.getName());
        result.setImg(entity.getImg());
        return result;
    }

    public ColorsEntity toEntity(ColorsDTO dto){
        ColorsEntity result = new ColorsEntity();
        result.setCode(dto.getCode());
        result.setName(dto.getName());
        result.setImg(dto.getImg());
        return result;
    }
}
