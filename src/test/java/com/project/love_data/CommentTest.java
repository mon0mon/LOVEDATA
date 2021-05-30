package com.project.love_data;

import com.project.love_data.businessLogic.service.CommentService;
import com.project.love_data.businessLogic.service.LocationService;
import com.project.love_data.businessLogic.service.SearchOption;
import com.project.love_data.dto.CommentDTO;
import com.project.love_data.dto.CommentPageType;
import com.project.love_data.dto.PageRequestDTO;
import com.project.love_data.dto.PageResultDTO;
import com.project.love_data.model.service.Comment;
import com.project.love_data.model.service.Location;
import com.project.love_data.repository.CommentRepository;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.*;

@SpringBootTest
public class CommentTest {
    @Autowired
    CommentRepository cmtRepository;
    @Autowired
    LocationService locService;
    @Autowired
    CommentService cmtService;

    @Test
    public void InsertComment() {
        for (int i = 0; i < 10; i++) {
            Location loc = locService.locationNameSearch(String.valueOf(i), SearchOption.CONTAIN).get(0);
            Comment entity = Comment.builder()
                    .cmtContent("Comment Content " + i)
                    .userNo(loc.getUser_no())
                    .location(loc).build();

            cmtRepository.save(entity);

            entity = cmtRepository.findByCmt_uuid(entity.getCmtUuid()).get();
            System.out.println(entity.getCmtNo());

//            Hibernate.initialize(loc.getCmtSet());

            loc.addCmt(entity);

            System.out.println(loc.getLoc_no() + "\tloc : " + loc);
            System.out.println("loc comment : ");
            for (Comment comment : loc.getCmtSet()) {
                System.out.print(comment + "\t");
            }
            System.out.println();

            locService.update(loc);
        }

        Comment cmt = Comment.builder()
                .userNo(0L)
                .cmtContent("Temp")
                .location(locService.dtoToEntity(locService.selectLocDTO(1L))).build();

        cmtRepository.save(cmt);


    }

    @Test
    public void readComment(){
        Location loc = locService.locationNameSearch(String.valueOf(0), SearchOption.CONTAIN).get(0);

        System.out.println("loc Comment Set");
        for (Comment comment : loc.getCmtSet()) {
            System.out.println(comment);
        }
    }

    @Test
    public void updateComment() {
        Location loc = locService.locationNameSearch(String.valueOf(0), SearchOption.CONTAIN).get(0);

        System.out.println("업데이트 전 댓글");
        System.out.println(loc.getLoc_no() + " : " + loc.getCmtSet());

        for (Comment cmt : loc.getCmtSet()) {
            cmt.setCmtContent("Update Comment Test");
            cmtService.update(cmt);
        }

        System.out.println("업데이트 후 댓글");
        System.out.println(loc.getLoc_no() + " : " + loc.getCmtSet());
    }

    @Test
    public void deleteComment() {
        Location loc = locService.locationNameSearch(String.valueOf(0), SearchOption.CONTAIN).get(0);

        System.out.println("삭제 전 댓글");
        System.out.println(loc.getLoc_no() + " : " + loc.getCmtSet());

        for (Comment cmt : loc.getCmtSet()) {
            cmtService.delete(cmt);
        }

        System.out.println("삭제 후 댓글");
        System.out.println(loc.getLoc_no() + " : " + loc.getCmtSet());
    }

    @Test
    public void testList() {
        PageRequestDTO pageRequestDTO = PageRequestDTO.builder()
                .page(1)
                .size(4)
                .build();

        System.out.println("pageRequestDTO = " + pageRequestDTO);
    }

    @Test
    public void listComment() {
        PageRequestDTO pageRequestDTO = PageRequestDTO.builder()
                .page(1)
                .size(10)
                .build();

        PageResultDTO<CommentDTO, Comment> resultDTO = cmtService.getCmtPage(pageRequestDTO, CommentPageType.ALL);

        System.out.println("PREV = " + resultDTO.isPrev());
        System.out.println("NEXT = " + resultDTO.isNext());
        System.out.println("TOTAL : " + resultDTO.getTotalPage());

        System.out.println("-------------------------------------------------");
        for (CommentDTO commentDTO : resultDTO.getDtoList()) {
            System.out.println(commentDTO.getCmtNo() + "\tcommentDTO = " + commentDTO);
        }

        System.out.println("=================================================");
        List<Integer> temp = resultDTO.getPageList();
        resultDTO.getPageList().forEach(i -> System.out.println(i));
    }

    @Test
    public void pageCommentLocFilter() {
        PageRequestDTO pageRequestDTO = PageRequestDTO.builder()
                .page(1)
                .size(10)
                .locNo(1L)
                .build();

        PageResultDTO<CommentDTO, Comment> resultDTO = cmtService.getCmtPage(pageRequestDTO, CommentPageType.LOCATION);

        System.out.println("PREV = " + resultDTO.isPrev());
        System.out.println("NEXT = " + resultDTO.isNext());
        System.out.println("TOTAL : " + resultDTO.getTotalPage());

        System.out.println("-------------------------------------------------");
        for (CommentDTO commentDTO : resultDTO.getDtoList()) {
            System.out.println(commentDTO.getCmtNo() + "(commentNo)" + "\tcommentDTO = " + commentDTO);
            System.out.println(commentDTO.getLocation().getLoc_no() + "(locationNo)");
        }

        System.out.println("=================================================");
        List<Integer> temp = resultDTO.getPageList();
        resultDTO.getPageList().forEach(i -> System.out.println(i));
    }
}