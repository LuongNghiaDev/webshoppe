package com.laptrinhjavaweb.api.admin;

import com.laptrinhjavaweb.dto.ProductDTO;
import com.laptrinhjavaweb.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
public class ProductAPI {

    @Autowired
    private IProductService productService;

    @PostMapping("/api/product")
    public ProductDTO createProduct(@RequestBody ProductDTO newDTO) {
        return productService.save(newDTO); //return chuoi json
    }

    @PutMapping("/api/product")
    public ProductDTO updateProduct(@RequestBody ProductDTO update) {
        return productService.save(update);
    }

    @DeleteMapping("/api/product")
    public void deleteProduct(@RequestBody long[] ids) {
        productService.delete(ids);
    }
}
