package com.laptrinhjavaweb.service.impl;

import com.laptrinhjavaweb.converter.BillConverter;
import com.laptrinhjavaweb.converter.BillDetailConverter;
import com.laptrinhjavaweb.dto.BillDTO;
import com.laptrinhjavaweb.dto.BillDetailDTO;
import com.laptrinhjavaweb.dto.CartDTO;
import com.laptrinhjavaweb.entity.BillDetailEntity;
import com.laptrinhjavaweb.entity.BillEntity;
import com.laptrinhjavaweb.repository.BillDetailRepository;
import com.laptrinhjavaweb.repository.BillRepository;
import com.laptrinhjavaweb.service.IBillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.Map;

@Service
public class BillService implements IBillService {



    @Autowired
    private BillRepository billRepository;

    @Autowired
    private BillDetailRepository billDetailRepository;

    @Autowired
    private BillConverter billConverter;

    @Autowired
    private BillDetailConverter billDetailConverter;

    @Override
    @Transactional
    public BillDTO AddBill(BillDTO bill) {
        BillEntity billEntity = new BillEntity();
        billEntity = billConverter.toEntity(bill);
        return billConverter.toDto(billRepository.save(billEntity));
    }

    @Override
    @Transactional
    public void logicBillDetail(HashMap<Long, CartDTO> cart) {
        BillDetailDTO billDetailDTO = new BillDetailDTO();
        for (Map.Entry<Long,CartDTO> itemCart : cart.entrySet()){
            billDetailDTO.setBillId(getLastBillId());
            billDetailDTO.setProductId(itemCart.getValue().getProductDTO().getId());
            billDetailDTO.setQuanty(itemCart.getValue().getQuanty());
            billDetailDTO.setTotal(itemCart.getValue().getTotalPrice());

            BillDetailEntity billDetailEntity = new BillDetailEntity();
            billDetailEntity = billDetailConverter.toEntity(billDetailDTO);
            billDetailConverter.toDto(billDetailRepository.save(billDetailEntity));
        }
    }

    @Override
    public long getLastBillId() {
        return billRepository.getIdBill();
    }

}
