package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.dto.BillDTO;
import com.laptrinhjavaweb.dto.BillDetailDTO;
import com.laptrinhjavaweb.dto.CartDTO;

import java.util.HashMap;

public interface IBillService {

    BillDTO AddBill(BillDTO bill);
    void logicBillDetail(HashMap<Long, CartDTO> cart);
    long getLastBillId();
}
