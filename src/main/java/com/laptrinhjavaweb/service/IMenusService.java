package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.dto.MenusDTO;

import java.util.List;

public interface IMenusService {

    List<MenusDTO> findAll();
}
