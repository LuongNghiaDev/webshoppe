package com.laptrinhjavaweb.controller.web;

import com.laptrinhjavaweb.service.ICategoryService;
import com.laptrinhjavaweb.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProductController extends BaseController{

    @Autowired
    private IProductService productService;

    @Autowired
    private ICategoryService categoryService;

    @RequestMapping(value = "/chitiet-sanpham/{id}",method = RequestMethod.GET)
    public ModelAndView productPage(@PathVariable long id) {
        mav.setViewName("web/products/product");
        mav.addObject("categoryOfProduct", categoryService.finAll());
        mav.addObject("products", productService.getProductById(id));
        return mav;
    }
}
