package com.laptrinhjavaweb.controller.web;


import com.laptrinhjavaweb.dto.CartDTO;
import com.laptrinhjavaweb.service.ICartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;

@Controller
public class CartController extends BaseController {

    @Autowired
    private ICartService cartService;


    @RequestMapping(value = "/gio-hang",method = RequestMethod.GET)
    public ModelAndView ListCartPage() {
        mav.setViewName("web/cart/listcart");
        return mav;
    }

    @RequestMapping(value = "/AddCart/{id}",method = RequestMethod.GET)
    public String AddCart(HttpServletRequest request , HttpSession session, @PathVariable long id) {
        HashMap<Long, CartDTO> cart = (HashMap<Long, CartDTO>)session.getAttribute("Cart");
        if(cart == null) {
            cart = new HashMap<Long, CartDTO>();
        }
        cart = cartService.AddCart(id, cart);
        session.setAttribute("Cart", cart);
        session.setAttribute("TotalQuantyCart", cartService.TotalQuanty(cart));
        session.setAttribute("TotalPriceCart", cartService.TotalPrice(cart));
        return "redirect:" + request.getHeader("Referer");
    }

    @RequestMapping(value = "/gio-hang/EditCart/{id}/{quanty}",method = RequestMethod.GET)
    public String EditCart(HttpServletRequest request ,HttpSession session, @PathVariable long id, @PathVariable int quanty) {
        HashMap<Long, CartDTO> cart = (HashMap<Long, CartDTO>)session.getAttribute("Cart");
        if(cart == null) {
            cart = new HashMap<Long, CartDTO>();
        }
        cart = cartService.EditCart(id, quanty, cart);
        session.setAttribute("Cart", cart);
        session.setAttribute("TotalQuantyCart", cartService.TotalQuanty(cart));
        session.setAttribute("TotalPriceCart", cartService.TotalPrice(cart));
        return "redirect:" + request.getHeader("Referer");
    }

    @RequestMapping(value = "/DeleteCart/{id}",method = RequestMethod.GET)
    public String DeleteCart(HttpServletRequest request ,HttpSession session, @PathVariable long id) {
        HashMap<Long, CartDTO> cart = (HashMap<Long, CartDTO>)session.getAttribute("Cart");
        if(cart == null) {
            cart = new HashMap<Long, CartDTO>();
        }
        cart = cartService.DeleteCart(id, cart);
        session.setAttribute("Cart", cart);
        session.setAttribute("TotalQuantyCart", cartService.TotalQuanty(cart));
        session.setAttribute("TotalPriceCart", cartService.TotalPrice(cart));
        return "redirect:" + request.getHeader("Referer");
    }
}
