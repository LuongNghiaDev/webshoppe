package com.laptrinhjavaweb.converter;

import com.laptrinhjavaweb.dto.BillDTO;
import com.laptrinhjavaweb.entity.BillEntity;
import org.springframework.stereotype.Component;

@Component
public class BillConverter {

    public BillDTO toDto(BillEntity entity){
        BillDTO result = new BillDTO();
        result.setId(entity.getId());
        result.setUserName(entity.getUserName());
        result.setFullName(entity.getFullName());
        result.setPhone(entity.getPhone());
        result.setAddress(entity.getAddress());
        result.setNote(entity.getNote());
        result.setQuanty(entity.getQuanty());
        result.setTotal(entity.getTotal());
        return result;
    }

    public BillEntity toEntity(BillDTO dto){
        BillEntity result = new BillEntity();
        result.setUserName(dto.getUserName());
        result.setFullName(dto.getFullName());
        result.setPhone(dto.getPhone());
        result.setAddress(dto.getAddress());
        result.setNote(dto.getNote());
        result.setQuanty(dto.getQuanty());
        result.setTotal(dto.getTotal());
        return result;
    }
}

