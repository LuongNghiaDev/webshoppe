package com.laptrinhjavaweb.converter;

import com.laptrinhjavaweb.dto.BillDetailDTO;
import com.laptrinhjavaweb.entity.BillDetailEntity;
import org.springframework.stereotype.Component;

@Component
public class BillDetailConverter {

    public BillDetailDTO toDto(BillDetailEntity entity){
        BillDetailDTO result = new BillDetailDTO();
        result.setId(entity.getId());
        result.setQuanty(entity.getQuanty());
        result.setTotal(entity.getTotal());
        result.setBillId(entity.getBills().getId());
        result.setProductId(entity.getProducts().getId());
       return result;
    }

    public BillDetailEntity toEntity(BillDetailDTO dto){
        BillDetailEntity result = new BillDetailEntity();
        result.setQuanty(dto.getQuanty());
        result.setTotal(dto.getTotal());
        return result;
    }
}
