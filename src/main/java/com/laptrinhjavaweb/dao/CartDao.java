package com.laptrinhjavaweb.dao;

import com.laptrinhjavaweb.converter.ProductConverter;
import com.laptrinhjavaweb.dto.CartDTO;
import com.laptrinhjavaweb.dto.ProductDTO;
import com.laptrinhjavaweb.entity.ProductsEntity;
import com.laptrinhjavaweb.repository.ProductRepository;
import com.laptrinhjavaweb.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.Map;

@Repository
public class CartDao {

    @Autowired
    private ProductRepository productRepository;

    @Autowired
    private ProductConverter productConverter;

    @Autowired
    private IProductService productService;

    public HashMap<Long, CartDTO> addCart(long id,HashMap<Long, CartDTO> cart){
        CartDTO cartDTO = new CartDTO();
        //ProductsEntity products = productRepository.findOne(id);
        //ProductDTO productDTO = productConverter.toDto(products);
        ProductDTO productDTO = productService.getProductById(id);
        if(productDTO != null && cart.containsKey(id)){
            cartDTO = cart.get(id);
            cartDTO.setQuanty(cartDTO.getQuanty()+1);
            cartDTO.setTotalPrice(cartDTO.getQuanty() * cartDTO.getProductDTO().getPrice());
        }else {
            cartDTO.setProductDTO(productDTO);
            cartDTO.setQuanty(1);
            cartDTO.setTotalPrice(productDTO.getPrice());
        }
        cart.put(id,cartDTO);
        return cart;
    }

    public HashMap<Long, CartDTO> editCart(long id,int quanty,HashMap<Long, CartDTO> cart){
        if(cart == null){
            return cart;
        }
        CartDTO cartDTO = new CartDTO();
        if(cart.containsKey(id)){
            cartDTO = cart.get(id);
            cartDTO.setQuanty(quanty);
            double totalPrice = quanty * cartDTO.getProductDTO().getPrice();
            cartDTO.setTotalPrice(totalPrice);
        }
        cart.put(id,cartDTO);
        return cart;
    }

    public HashMap<Long, CartDTO> deleteCart(long id,HashMap<Long, CartDTO> cart){
        if(cart == null){
            return cart;
        }
        if(cart.containsKey(id)){
            cart.remove(id);
        }
        return cart;
    }

    public double TotalPrice(HashMap<Long, CartDTO> cart){
        double totalPrice = 0;
        for(Map.Entry<Long, CartDTO> itemCart : cart.entrySet()) {
            totalPrice += itemCart.getValue().getTotalPrice();
        }
        return totalPrice;
    }

    public int TotalQuanty(HashMap<Long, CartDTO> cart){
        int totalQuanty = 0;
        for(Map.Entry<Long, CartDTO> itemCart : cart.entrySet()) {
            totalQuanty += itemCart.getValue().getQuanty();
        }
        return totalQuanty;
    }

}
