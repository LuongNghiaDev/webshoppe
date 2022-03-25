package com.laptrinhjavaweb.api.admin;

import com.laptrinhjavaweb.dto.SlidesDTO;
import com.laptrinhjavaweb.service.ISlideService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
public class SlideAPI {

    @Autowired
    private ISlideService slideService;

    @PostMapping("/api/slide")
    public SlidesDTO createSlide(@RequestBody SlidesDTO newDTO) {
        return slideService.save(newDTO);
    }

    @PutMapping("/api/slide")
    public SlidesDTO updateSlide(@RequestBody SlidesDTO update) {
        return slideService.save(update);
    }

    @DeleteMapping("/api/slide")
    public void deleteSlide(@RequestBody long[] ids) {
        slideService.delete(ids);
    }
}
