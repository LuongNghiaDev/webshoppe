package com.laptrinhjavaweb.converter;

import com.laptrinhjavaweb.dto.SlidesDTO;
import com.laptrinhjavaweb.entity.SlidesEntity;
import org.springframework.stereotype.Component;

@Component
public class SlideConverter {

    public SlidesDTO toDto(SlidesEntity entity){
        SlidesDTO result = new SlidesDTO();
        result.setId(entity.getId());
        result.setCaption(entity.getCaption());
        result.setContent(entity.getContent());
        result.setImg(entity.getImg());
        return result;
    }

    public SlidesEntity toEntity(SlidesDTO dto){
        SlidesEntity result = new SlidesEntity();
        result.setCaption(dto.getCaption());
        result.setContent(dto.getContent());
        result.setImg(dto.getImg());
        return result;
    }

    public SlidesEntity toEntity(SlidesEntity result,SlidesDTO dto){
        result.setCaption(dto.getCaption());
        result.setContent(dto.getContent());
        result.setImg(dto.getImg());
        return result;
    }
}
