package com.project.love_data.businessLogic.service;

import com.project.love_data.dto.CourseImageDTO;
import com.project.love_data.model.resource.CourseImage;
import com.project.love_data.repository.CourseImageRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.io.File;
import java.util.*;

@Service
@RequiredArgsConstructor
public class CourseImageService {
    private final CourseImageRepository repository;

    public CourseImage getImage(Long imgId) {
        Optional<CourseImage> item = repository.findById(imgId);

        return item.isPresent() ? item.get() : null;
    }

    public CourseImage getImage(String uuid) {
        Optional<CourseImage> item = repository.findLiveImageByImg_uuid(uuid);

        return item.isPresent() ? item.get() : null;
    }

    public List<CourseImage> getAllImagesByCorNo(Long corNo) {
        Optional<List<CourseImage>> itmes = repository.findAllImageByCor_no(corNo);

        return itmes.orElse(null);
    }

    public List<CourseImage> getLiveImagesByCorNo(Long corNo) {
        Optional<List<CourseImage>> itmes = repository.findAllLiveImageByCor_no(corNo);

        return itmes.orElse(null);
    }

    public CourseImage getImageEntity(String user_no, String fileRootPath, String fileName, Long corNo, long img_index) {
//        ImageDTO dto = getImageDTO(user_no, fileRootPath, fileName, location);
//        Image entity = dtoToEntity(dto);

        CourseImage entity = CourseImage.builder()
                .cor_no(corNo)
                .img_uuid(fileName)
                .img_url(fileRootPath+"/"+fileName)
                .user_no(Long.valueOf(user_no))
                .idx(img_index)
                .build();

//        repository.save(entity);

        return entity;
    }

    public CourseImage update(CourseImage img) {
        return repository.save(img);
    }

    public CourseImage dtoToEntity(CourseImageDTO dto) {
        CourseImage entity = CourseImage.builder()
                .img_url(dto.getImg_url())
                .user_no(dto.getUser_no())
//                .loc_uuid(dto.getLoc_uuid())
                .cor_no(dto.getCor_no())
                .img_uuid(dto.getImg_uuid())
                .idx(dto.getIdx())
                .is_deleted(dto.is_deleted())
                .build();

        return entity;
    }

    public CourseImageDTO entityToDTO(CourseImage img) {
        CourseImageDTO dto = CourseImageDTO.builder()
                .idx(img.getIdx())
                .img_no(img.getImg_no())
                .img_url(img.getImg_url())
                .img_uuid(img.getImg_uuid())
                .cor_no(img.getCor_no())
                .regDate(img.getRegDate())
                .modDate(img.getModDate())
                .is_deleted(img.is_deleted())
                .build();

        return dto;
    }

    private CourseImageDTO getImageDTO(String user_no, String fileRootPath, String fileName, Long corNo) {
        CourseImageDTO dto = CourseImageDTO.builder()
                .img_url(fileRootPath + File.separator + fileName)
                .user_no(Long.valueOf(user_no))
                .cor_no(corNo)
                .img_uuid(fileName)
                .build();

        return dto;
    }

    private CourseImage disable(CourseImage img) {
        img.set_deleted(true);

        update(img);

        return getImage(img.getImg_no());
    }

    private CourseImage enable(CourseImage img) {
        img.set_deleted(false);

        update(img);

        return getImage(img.getImg_no());
    }

    public void delete(Long imgNo) {
        CourseImage img = getImage(imgNo);

        if (!img.is_deleted()) {
            disable(img);
        }
    }

    public void delete(String uuid) {
        CourseImage img = getImage(uuid);

        if (!img.is_deleted()) {
            disable(img);
        }
    }

    public void permaDelete(String img_uuid) {
        repository.deleteByImg_uuid(img_uuid);
    }

    public CourseImage editImageEntityIndex(String uuid, Long img_Index) {
        CourseImage img = getImage(uuid);

        img.setIdx(img_Index);

        return img;
    }
}
