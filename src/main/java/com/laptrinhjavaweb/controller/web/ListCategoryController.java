package com.laptrinhjavaweb.controller.web;

import com.laptrinhjavaweb.dto.ProductDTO;
import com.laptrinhjavaweb.service.ICategoryService;
import com.laptrinhjavaweb.service.IProductService;
import com.laptrinhjavaweb.service.impl.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ListCategoryController extends BaseController {

    @Autowired
    private ICategoryService categoryService;

    @Autowired
    private IProductService productService;

    @RequestMapping(value = "/sanpham",method = RequestMethod.GET)
    public ModelAndView showListProduct(@RequestParam("page") int page,@RequestParam("limit") int limit) {
        mav.setViewName("web/products/category");
        ProductDTO model = new ProductDTO();
        model.setPage(page);
        model.setLimit(limit);
        Pageable pageable = new PageRequest(page - 1, limit);
        model.setListResult(productService.findAllByPagination(pageable));
        model.setTotalItem(productService.getTotalItem());
        model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));
        mav.addObject("categoryOftheloai", categoryService.finAll());
        mav.addObject("model",model);
        return mav;
    }
}

