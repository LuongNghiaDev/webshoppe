package com.laptrinhjavaweb.controller.admin;

import com.laptrinhjavaweb.service.IMenusService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.PostConstruct;

@Controller
public class BaseAdminController {

    @Autowired
    IMenusService iMenusService;

    public ModelAndView mav = new ModelAndView();

    @PostConstruct
    public ModelAndView Init () {
        mav.addObject("menu", iMenusService.findAll());
        return mav;
    }
}
