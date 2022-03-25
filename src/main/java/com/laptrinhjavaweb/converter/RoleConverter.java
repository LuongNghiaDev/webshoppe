package com.laptrinhjavaweb.converter;

import com.laptrinhjavaweb.dto.RoleDTO;
import com.laptrinhjavaweb.entity.RoleEntity;
import org.springframework.stereotype.Component;

@Component
public class RoleConverter {

    public RoleDTO toDto(RoleEntity entity){
        RoleDTO result = new RoleDTO();
        result.setId(entity.getId());
        result.setName(entity.getName());
        result.setCode(entity.getCode());
        return result;
    }

    public RoleEntity toEntity(RoleDTO dto){
        RoleEntity result = new RoleEntity();
        result.setName(dto.getName());
        result.setCode(dto.getCode());
        return result;
    }

}
