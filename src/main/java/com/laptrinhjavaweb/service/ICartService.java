package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.dto.CartDTO;

import java.util.HashMap;

public interface ICartService {

    HashMap<Long, CartDTO> AddCart(long id, HashMap<Long, CartDTO> cart);
    HashMap<Long, CartDTO> EditCart(long id,int quanty, HashMap<Long, CartDTO> cart);
    HashMap<Long, CartDTO> DeleteCart(long id, HashMap<Long, CartDTO> cart);
    double TotalPrice(HashMap<Long, CartDTO> cart);
    int TotalQuanty(HashMap<Long, CartDTO> cart);

}
