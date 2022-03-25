package com.laptrinhjavaweb.service.impl;

import com.laptrinhjavaweb.converter.ProductConverter;
import com.laptrinhjavaweb.dto.ProductDTO;
import com.laptrinhjavaweb.entity.CategorysEntity;
import com.laptrinhjavaweb.entity.ColorsEntity;
import com.laptrinhjavaweb.entity.ProductsEntity;
import com.laptrinhjavaweb.repository.CategoryRepository;
import com.laptrinhjavaweb.repository.ColorsRepository;
import com.laptrinhjavaweb.repository.ProductRepository;
import com.laptrinhjavaweb.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductService implements IProductService {

    @Autowired
    private ProductRepository productRepository;

    @Autowired
    private ProductConverter productConverter;

    @Autowired
    private CategoryRepository categoryRepository;

    @Autowired
    private ColorsRepository colorsRepository;

    @Override
    public List<ProductDTO> findAll() {
        List<ProductDTO> model = new ArrayList<>();
        List<ProductsEntity> entities = productRepository.findAll();
        for (ProductsEntity item : entities){
            ProductDTO dto = productConverter.toDto(item);
            model.add(dto);
        }
        return model;
    }

    @Override
    public ProductDTO getProductById(long id) {
        ProductsEntity entity = productRepository.findOne(id);
        return productConverter.toDto(entity);
    }

    @Override
    public List<ProductDTO> findAllByPagination(Pageable pageable) {
        List<ProductDTO> model = new ArrayList<>();
        List<ProductsEntity> entities = productRepository.findAll(pageable).getContent();
        for (ProductsEntity item : entities){
            ProductDTO dto = productConverter.toDto(item);
            model.add(dto);
        }
        return model;
    }

    @Override
    public int getTotalItem() {
        return (int) productRepository.count();
    }

    @Override
    public List<ProductDTO> getAllProductById(long id) {
        List<ProductDTO> model = new ArrayList<>();
        List<ProductsEntity> entities = productRepository.getAllProductById(id);
        for (ProductsEntity item : entities){
            ProductDTO dto = productConverter.toDto(item);
            model.add(dto);
        }
        return model;
    }

    @Override
    @Transactional
    public ProductDTO save(ProductDTO dto) {
        CategorysEntity category = categoryRepository.findOneByCode(dto.getCategoryCode());
        ColorsEntity colors = colorsRepository.findOneByCode(dto.getColorsCode());
        ProductsEntity productsEntity = new ProductsEntity();
        if(dto.getId() != null) {
            ProductsEntity oldNew = productRepository.findOne(dto.getId());
            oldNew.setCategory(category);
            oldNew.setColors(colors);
            productsEntity = productConverter.toEntity(oldNew, dto);
        } else {
            productsEntity = productConverter.toEntity(dto);
            productsEntity.setCategory(category);
            productsEntity.setColors(colors);
        }
        return productConverter.toDto(productRepository.save(productsEntity));
    }

    @Override
    @Transactional
    public void delete(long[] ids) {
        for (long id : ids){
            productRepository.delete(id);
        }
    }
}
