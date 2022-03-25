package com.laptrinhjavaweb.service.impl;

import com.laptrinhjavaweb.dao.CartDao;
import com.laptrinhjavaweb.dto.CartDTO;
import com.laptrinhjavaweb.service.ICartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;

@Service
public class CartService implements ICartService {

    @Autowired
    private CartDao cartDao;

    @Override
    public HashMap<Long, CartDTO> AddCart(long id, HashMap<Long, CartDTO> cart) {
        return cartDao.addCart(id,cart);
    }

    @Override
    public HashMap<Long, CartDTO> EditCart(long id,int quanty, HashMap<Long, CartDTO> cart) {
        return cartDao.editCart(id,quanty,cart);
    }

    @Override
    public HashMap<Long, CartDTO> DeleteCart(long id, HashMap<Long, CartDTO> cart) {
        return cartDao.deleteCart(id,cart);
    }

    @Override
    public double TotalPrice(HashMap<Long, CartDTO> cart) {
        return cartDao.TotalPrice(cart);
    }

    @Override
    public int TotalQuanty(HashMap<Long, CartDTO> cart) {
        return cartDao.TotalQuanty(cart);
    }
}
