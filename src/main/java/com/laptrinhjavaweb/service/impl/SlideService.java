package com.laptrinhjavaweb.service.impl;

import com.laptrinhjavaweb.converter.SlideConverter;
import com.laptrinhjavaweb.dto.SlidesDTO;
import com.laptrinhjavaweb.entity.SlidesEntity;
import com.laptrinhjavaweb.repository.SlideRepository;
import com.laptrinhjavaweb.service.ISlideService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
public class SlideService implements ISlideService {

    @Autowired
    private SlideRepository slideRepository;

    @Autowired
    private SlideConverter slideConverter;

    @Override
    public List<SlidesDTO> findAll() {
        List<SlidesDTO> model = new ArrayList<>();
        List<SlidesEntity> entities = slideRepository.findAll();
        for (SlidesEntity item : entities){
            SlidesDTO dto = slideConverter.toDto(item);
            model.add(dto);
        }
        return model;
    }

    @Override
    public int getTotalItem() {
        return (int) slideRepository.count();
    }

    @Override
    public List<SlidesDTO> findAllPagination(Pageable pageable) {
        List<SlidesDTO> model = new ArrayList<>();
        List<SlidesEntity> entities = slideRepository.findAll(pageable).getContent();
        for (SlidesEntity item : entities){
            SlidesDTO dto = slideConverter.toDto(item);
            model.add(dto);
        }
        return model;
    }

    @Override
    @Transactional
    public SlidesDTO save(SlidesDTO dto) {
        SlidesEntity slidesEntity = new SlidesEntity();
        if(dto.getId() != null) {
            SlidesEntity oldNew = slideRepository.findOne(dto.getId());
            slidesEntity = slideConverter.toEntity(oldNew, dto);
        } else {
            slidesEntity = slideConverter.toEntity(dto);
        }
        return slideConverter.toDto(slideRepository.save(slidesEntity));
    }

    @Override
    @Transactional
    public void delete(long[] ids) {
        for(long id : ids) {
            slideRepository.delete(id);
        }
    }

    @Override
    public SlidesDTO getSlideById(long id) {
        SlidesEntity entity = slideRepository.findOne(id);
        return slideConverter.toDto(entity);
    }
}
