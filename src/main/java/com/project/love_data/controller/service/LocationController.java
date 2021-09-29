package com.project.love_data.controller.service;

import com.project.love_data.businessLogic.service.*;
import com.project.love_data.dto.*;
import com.project.love_data.model.service.*;
import com.project.love_data.model.user.User;
import com.project.love_data.security.model.AuthUserModel;
import com.project.love_data.security.service.UserDetailsService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

import static com.project.love_data.util.ConstantValues.*;

@Log4j2
@Controller
public class LocationController {
    @Autowired
    FileUploadService fileUploadService;
    @Autowired
    LocationService locService;
    @Autowired
    LocationImageService imgService;
    @Autowired
    CommentService comService;
    @Autowired
    UserService userService;
    @Autowired
    UserRecentLocService userRecentLocService;
    @Autowired
    UserLikeLocService userLikeLocService;
    @Autowired
    UserDetailsService userDetailsService;
    @Autowired
    UserLikeCmtService userLikeCmtService;
    @Autowired
    UserDislikeCmtService userDislikeCmtService;
    List<String> tagList = new ArrayList<>();

    @RequestMapping("/service/loc_registration")
    public String loc_Reg(Model model) {
        List<LocationTag> tagList = Arrays.asList(LocationTag.values());
        model.addAttribute("tagList", tagList);

        return "/service/loc_registration";
    }

    @PostMapping("/service/loc/tags")
    public void locGetTagsList(@RequestParam("tags[]") String[] tagArray) {
        tagList = Arrays.asList(tagArray);

        if (tagList != null) {
            log.info("태그 등록 성공");
        } else {
            log.info("태그 등록 실패");
        }
    }

    @GetMapping("/service/loc_registration/regData")
    public String locRegistrationDataNoAccess() {
        log.info("Access Invalid(Shouldn't Access with GET Method)");
        return "redirect:/service/loc_recommend";
    }

    @PostMapping("/service/loc_registration/regData")
    public String locRegistrationData(@RequestParam("files") List<MultipartFile> fileList,
                                      HttpServletRequest request,
                                      RedirectAttributes redirectAttributes) {
        List<String> filePath = null;
        Map<String, String> reqParam = new HashMap<>();

        reqParam.put("name", request.getParameter("name"));
        reqParam.put("tel", request.getParameter("tel"));
        reqParam.put("info", request.getParameter("info"));
        reqParam.put("zipNo", request.getParameter("zipNo"));
        reqParam.put("fullAddr", request.getParameter("fullRoadAddr"));
        reqParam.put("roadAddr", request.getParameter("roadAddr"));
        reqParam.put("addrDetail", request.getParameter("addrDetail"));
        reqParam.put("siDoName", request.getParameter("siNm"));
        reqParam.put("siGunGuName", request.getParameter("sggNm"));
//        // Todo Debug 목적용 코드 나중에 삭제할 것
        if (request.getParameter("user_no") != null) {
            reqParam.put("user_no", (request.getParameter("user_no")));
        } else {
            reqParam.put("user_no", (request.getParameter("user_no_debug")));
        }

        if (tagList.isEmpty()) {
            log.warn("No Location Tag Found (Must add tag before submit location)");
            return "redirect:/service/loc_recommend";
        }

        filePath = fileUploadService.execute(fileList, UploadFileType.IMAGE, UploadFileCount.MULTIPLE,
                MIN_UPLOAD_COUNT, MAX_UPLOAD_COUNT, UploadPathType.LOC, request);

        if (filePath == null) {
            log.warn("파일이 제대로 저장되지 않았습니다.");
            return "redirect:/service/loc_recommend";
        }

        Location entity = locService.register(reqParam, tagList, filePath);
        User user = userService.select(Long.parseLong(reqParam.get("user_no")));
        //Todo 업로드한 장소테이블에 정보 인서트 하기
//        user.addUploadLocation(entity);
        userService.update(user);
        LocationDTO dto = locService.entityToDto(entity);

        redirectAttributes.addFlashAttribute("dto", dto);

        return "redirect:/service/loc_recommend";
    }

    @GetMapping(value = "/service/loc_recommend")
    public String goToLocRecommendList() {
        return "redirect:/service/loc_recommend/list";
    }

    @GetMapping(value = "/service/loc_detail")
    public String locDetail(Long locNo, @ModelAttribute("requestDTO") PageRequestDTO pageRequestDTO, Authentication authentication,
                            Model model, HttpServletRequest request) {
        if (locNo != null) {
            if (locService.selectLoc(locNo) == null) {
                model.addAttribute("isNullLocation", true);
                return "/service/loc_detail";
            } else {
                model.addAttribute("isNullLocation", false);
            }

            boolean isAdmin = false;
            if (authentication != null) {
                for (GrantedAuthority authority : authentication.getAuthorities()) {
                    if (authority.getAuthority().equals("ROLE_ADMIN")) {
                        isAdmin = true;
                        break;
                    }
                }
            }

            locService.incViewCount(locNo);
            LocationDTO dto = locService.selectLocDTO(locNo);
            pageRequestDTO.setSize(MAX_COM_COUNT);
            PageResultDTO<CommentDTO, Comment> resultCommentDTO = null;
//            PageResultDTO<CommentDTO, Comment> bestCommentDTO = null;
            List<Boolean> cmtLikeList = new ArrayList<>();
            List<Boolean> cmtDislikeList = new ArrayList<>();
            List<CommentDTO> bestCmtList = new ArrayList<>();
            List<Boolean> bestCmtLikeList = new ArrayList<>();
            List<Boolean> bestCmtDislikeList = new ArrayList<>();
            List<Integer> bestCmtIndexList = new ArrayList<>();
            List<Integer> cmtIndexList = new ArrayList<>();
            boolean bestCmtMatchFlag = false;

            if (isAdmin) {
                resultCommentDTO = comService.getCmtPage(pageRequestDTO, CommentPageType.LOCATION,
                        CommentSortType.IDX_DES, CommentSearchType.All);
            } else {
                resultCommentDTO = comService.getCmtPage(pageRequestDTO, CommentPageType.LOCATION);
            }
            pageRequestDTO.setSize(3);
//            bestCommentDTO = comService.getCmtPage(pageRequestDTO,
//                    CommentPageType.LOCATION, CommentSortType.LIKE_DES,CommentSearchType.Live);
            List<Comment> bestCmtHolder = comService.getBestComment(locNo);
            if (bestCmtHolder != null ) {
                if (!bestCmtHolder.isEmpty()) {
                    for (Comment cmt : bestCmtHolder) {
                        bestCmtList.add(comService.entityToDto(cmt));
                    }
                }
            }

//            Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
            if (authentication != null) {
                AuthUserModel authUserModel = (AuthUserModel) authentication.getPrincipal();
                if (authentication.isAuthenticated()) {
                    UserRecentLoc item = userRecentLocService.register(locNo, authUserModel.getUser_no());
//                    if (item == null) {
//                        log.warn(authUserModel.getUser_no() + "의 최근 접속한 기록을 추가하는 과정에서 문제가 발생하였습니다.");
//                        log.warn("장소 번호 (" + locNo + ")");
//                    } else {
//                        log.info("기록 추가 성공");
//                    }
                    if (userLikeLocService.selectByLocNoAndUserNo(locNo, authUserModel.getUser_no()) != null) {
                        model.addAttribute("isLiked", true);
                    } else {
                        model.addAttribute("isLiked", false);
                    }

                    for (CommentDTO cmtDTO : resultCommentDTO.getDtoList()) {
                        UserLikeCmt userLikeCmt = userLikeCmtService.selectBycmtNoAndUserNo(cmtDTO.getCmtNo(), authUserModel.getUser_no());
                        UserDislikeCmt userDislikeCmt = userDislikeCmtService.selectBycmtNoAndUserNo(cmtDTO.getCmtNo(), authUserModel.getUser_no());

                        if (userLikeCmt != null && userDislikeCmt == null) {
                            cmtLikeList.add(true);
                            cmtDislikeList.add(false);
                        } else if (userLikeCmt == null && userDislikeCmt != null) {
                            cmtLikeList.add(false);
                            cmtDislikeList.add(true);
                        } else {
                            cmtLikeList.add(null);
                            cmtDislikeList.add(null);
                        }

                        boolean cmtIndexMatchFlag = false;
                        for (int i = 0; i < bestCmtList.size(); i++) {
                            if (cmtDTO.equals(bestCmtList.get(i))) {
                                cmtIndexList.add(i);
                                cmtIndexMatchFlag = true;
                                break;
                            }
                        }

                        if (!cmtIndexMatchFlag) {
                            cmtIndexList.add(-1);
                        }
                    }

                    for (CommentDTO best : bestCmtList) {
                        UserLikeCmt userLikeBestCmt = userLikeCmtService.selectBycmtNoAndUserNo(best.getCmtNo(), authUserModel.getUser_no());
                        UserDislikeCmt userDislikeBestCmt = userDislikeCmtService.selectBycmtNoAndUserNo(best.getCmtNo(), authUserModel.getUser_no());

                        if (userLikeBestCmt != null && userDislikeBestCmt == null) {
                            bestCmtLikeList.add(true);
                            bestCmtDislikeList.add(false);
                        } else if (userLikeBestCmt == null && userDislikeBestCmt != null) {
                            bestCmtLikeList.add(false);
                            bestCmtDislikeList.add(true);
                        } else {
                            bestCmtLikeList.add(null);
                            bestCmtDislikeList.add(null);
                        }

                        bestCmtMatchFlag = false;
                        Integer index = null;
                        for (int i = 0; i < resultCommentDTO.getDtoList().size(); i++) {
                            if (resultCommentDTO.getDtoList().get(i).equals(best)) {
                                index = i;
                                bestCmtMatchFlag = true;
                                break;
                            }
                        }

                        if (bestCmtMatchFlag) {
                            bestCmtIndexList.add(index);
                        } else {
                            bestCmtIndexList.add(-1);
                        }
                    }
                }
            } else {
                model.addAttribute("isLiked", false);
            }

            model.addAttribute("dto", dto);
            model.addAttribute("resComDTO", resultCommentDTO);
            model.addAttribute("cmtLikeList", cmtLikeList);
            model.addAttribute("cmtDislikeList", cmtDislikeList);
            model.addAttribute("bestCmtList", bestCmtList);
            model.addAttribute("bestCmtLikeList", bestCmtLikeList);
            model.addAttribute("bestCmtDislikeList", bestCmtDislikeList);
            model.addAttribute("bestCmtIndexList", bestCmtIndexList);
            model.addAttribute("cmtIndexList", cmtIndexList);

            return "/service/loc_detail";
        }

        return "/service/loc_recommend";
    }

    @GetMapping(value = "/service/loc_recommend/list")
    public String locRecommendList(HttpServletRequest request,
//                                   PageRequestDTO pageRequestDTO,
                                   Authentication authentication,
                                   Model model) {
        String pageNumber = request.getParameter("page");
        if (pageNumber == null) {
            pageNumber = "1";
        }
        int pageNum = Integer.parseInt(pageNumber);

        List<LocationTag> tagList = Arrays.asList(LocationTag.values());
        PageRequestDTO pageRequestDTO = PageRequestDTO.builder()
                .size(MAX_LOC_LIST_SIZE)
                .sortCriterion(SortCriterion.VIEW)
                .page(pageNum)
                .build();
        PageResultDTO<LocationDTO, com.project.love_data.model.service.Location> resultDTO = locService.getList(pageRequestDTO);
        List<Boolean> isLikedList = new ArrayList<>();

        if (authentication == null) {
            for (int i = 0; i < resultDTO.getSize(); i++) {
                isLikedList.add(false);
            }
        } else {
            AuthUserModel authUserModel = (AuthUserModel) authentication.getPrincipal();
            Long user_no = authUserModel.getUser_no();
            for (int i = 0; i < resultDTO.getDtoList().size(); i++) {
                Long loc_no = resultDTO.getDtoList().get(i).getLoc_no();
                UserLikeLoc item = userLikeLocService.selectByLocNoAndUserNo(loc_no, user_no);
                if (item != null) {
                    isLikedList.add(true);
                } else {
                    isLikedList.add(false);
                }
            }
        }

        model.addAttribute("result", resultDTO);
        model.addAttribute("tagList", tagList);
        model.addAttribute("isLikedList", isLikedList);

//        if(authentication != null) {
//            AuthUserModel authUser = (AuthUserModel) authentication.getPrincipal();
////            log.info(authUser.getUser_no());
//        }

        return "/service/loc_recommend";
    }

    @GetMapping("/service/loc_edit")
    public String locEdit(Long locNo, Model model) {
        if (locNo != null) {
            LocationDTO dto = locService.selectLocDTO(locNo);

            List<LocationTag> tagList = Arrays.asList(LocationTag.values());

            model.addAttribute("dto", dto);
            model.addAttribute("tagList", tagList);

            return "/service/loc_edit";
        }

        return "/service/loc_recommend";
    }

    @PostMapping("/service/loc_edit/regData")
    public String locEditData(@RequestParam("files") List<MultipartFile> fileList,
                              HttpServletRequest request,
                              RedirectAttributes redirectAttributes) {
        List<String> filePath = null;
        Map<String, String> reqParam = new HashMap<>();

        reqParam.put("loc_no", request.getParameter("loc_no"));
        reqParam.put("loc_uuid", request.getParameter("loc_uuid"));
        reqParam.put("name", request.getParameter("name"));
        reqParam.put("tel", request.getParameter("tel"));
        reqParam.put("info", request.getParameter("info"));
        reqParam.put("zipNo", request.getParameter("zipNo"));
        reqParam.put("fullAddr", request.getParameter("fullRoadAddr"));
        reqParam.put("roadAddr", request.getParameter("roadAddr"));
        reqParam.put("addrDetail", request.getParameter("addrDetail"));
        reqParam.put("siDoName", request.getParameter("siNm"));
        reqParam.put("siGunGuName", request.getParameter("sggNm"));
//        // Todo Debug 목적용 코드 나중에 삭제할 것
        if (request.getParameter("user_no") != null) {
            reqParam.put("user_no", (request.getParameter("user_no")));
        } else {
            reqParam.put("user_no", (request.getParameter("user_no_debug")));
        }

        Location loc_no_Test = locService.selectLoc(Long.valueOf(reqParam.get("loc_no")));
        Location loc_uuid_Test = locService.selectLoc(reqParam.get("loc_uuid"));

        // 장소 수정 정보에 입력된 장소가 맞는지 확인하는 과정 (Validating)
        if (loc_no_Test == null || loc_uuid_Test == null || !loc_uuid_Test.equals(loc_no_Test)) {
            log.warn("Given Location Edit Information doesn't match with DB");
            log.info("Please Check the Value");
            return "redirect:/service/loc_recommend";
        }

        if (tagList.isEmpty()) {
            log.warn("No Location Tag Found (Must add tag before submit location)");
            return "redirect:/service/loc_recommend";
        }

        filePath = fileUploadService.execute(fileList, UploadFileType.IMAGE, UploadFileCount.MULTIPLE,
                MIN_UPLOAD_COUNT, MAX_UPLOAD_COUNT, UploadPathType.LOC, request);

        if (filePath == null) {
            log.warn("파일이 제대로 저장되지 않았습니다.");
            return "redirect:/service/loc_recommend";
        }

        LocationDTO dto = locService.entityToDto(locService.edit(reqParam, tagList, filePath));
//        redirectAttributes.addFlashAttribute("dto", dto);

        return "redirect:/service/loc_recommend";
    }

    @GetMapping(value = "/service/loc_recommend/search")
    public String getSearchValue(HttpServletRequest request, Model model) {
        String keyword = request.getParameter("keyword");
        String order = request.getParameter("sortOrder");
        String tagString = request.getParameter("tags");
        String type = request.getParameter("searchType");
        String pageNumber = request.getParameter("page");
        if (pageNumber == null) {
            pageNumber = "1";
        }
        int pageNum = Integer.parseInt(pageNumber);

        SortingOrder sortingOrder = null;
        SortCriterion sortCriterion = null;
        SearchType searchType = SearchType.valueOf(type);
        List<String> tempList = Arrays.asList(tagString.split(","));
        tagList.clear();
        for (String s : tempList) {
            if ("".equals(s)) {
                continue;
            } else {
                tagList.add(s);
            }
        }

        // 일반 유저는 삭제된 장소 항목을 볼 수 없음
        switch (searchType) {
            case DISABLED:
                searchType = SearchType.NONE;
                break;
            case DISABLED_TAG:
                searchType = SearchType.TAG;
                break;
            case DISABLED_TITLE:
                searchType = SearchType.TITLE;
                break;
            case DISABLED_TITLE_TAG:
                searchType = SearchType.TITLE_TAG;
                break;
        }

        switch (order) {
            case "LIKE_DES":
                // 좋아요 순
                sortCriterion = SortCriterion.LIKE;
                sortingOrder = SortingOrder.DES;
                break;
            case "DATE_DES":
                // 최신 등록순
                sortCriterion = SortCriterion.DATE;
                sortingOrder = SortingOrder.DES;
                break;
            case "DATE_ASC":
                // 오래된 등록순
                sortCriterion = SortCriterion.DATE;
                sortingOrder = SortingOrder.ASC;
                break;
            case "VIEW_DES":
                // 조회순
            default:
                sortCriterion = SortCriterion.VIEW;
                sortingOrder = SortingOrder.DES;
                break;
        }

        PageRequestDTO pageRequestDTO = PageRequestDTO.builder()
                .size(MAX_LOC_LIST_SIZE)
                .searchType(searchType)
                .keyword(keyword)
                .tagList(tagList)
                .sortCriterion(sortCriterion)
                .sortingOrder(sortingOrder)
                .page(pageNum)
                .build();

        PageResultDTO<LocationDTO, com.project.love_data.model.service.Location> resultDTO = locService.getList(pageRequestDTO);

        if (resultDTO.getTotalPage() < pageNum) {
            model.addAttribute("isRequestPageNumberExceed", true);
        } else {
            model.addAttribute("isRequestPageNumberExceed", false);
        }

        List<LocationTag> tags = Arrays.asList(LocationTag.values());
        List<String> activeTags = tagList;

        model.addAttribute("result", resultDTO);
        model.addAttribute("tagList", tags);
        model.addAttribute("activeTags", activeTags);
        model.addAttribute("keyword", keyword);
        model.addAttribute("sortOrder", order);
        model.addAttribute("searchType", searchType);

//        log.info("active tags : " + activeTags);

        return "/service/loc_recommend_search";
    }

    @PostMapping("/service/loc_delete")
    public String locDelete(HttpServletRequest request,
                            RedirectAttributes redirectAttributes,
                            Authentication authentication, Long locNo) {
        if (authentication == null) {
            return "redirect:/service/loc_recommend";
        }

        Location entity = locService.selectLoc(locNo);

        if (entity == null) {
            return "redirect:/service/loc_recommend";
        }

        AuthUserModel authUserModel = (AuthUserModel) authentication.getPrincipal();
        Long user_no = authUserModel.getUser_no();
        Set<GrantedAuthority> authorities = (Set<GrantedAuthority>) authUserModel.getAuthorities();

        log.info(request.isUserInRole("ROLE_ADMIN"));

        if (!entity.getUser_no().equals(user_no) && !request.isUserInRole("ROLE_ADMIN")) {
            log.warn("장소 삭제를 요청한 유저가 장소를 등록한 유저와 같지 않습니다.");
            return "redirect:/service/loc_recommend";
        }

        locService.delete(entity.getLoc_no());

        log.info(request.getRequestURL());
        log.info(request.getRequestURI());

        return "redirect:/service/loc_recommend";
    }

    @PostMapping("/service/loc_rollback")
    public String locRollback(HttpServletRequest request,
                              RedirectAttributes redirectAttributes,
                              Authentication authentication, Long locNo) {
        if (authentication == null) {
            return "redirect:/service/loc_recommend";
        }

        Location entity = locService.selectLoc(locNo);

        if (entity == null) {
            return "redirect:/service/loc_recommend";
        }

        AuthUserModel authUserModel = (AuthUserModel) authentication.getPrincipal();
        Long user_no = authUserModel.getUser_no();
        Set<GrantedAuthority> authorities = (Set<GrantedAuthority>) authUserModel.getAuthorities();

        log.info(request.isUserInRole("ROLE_ADMIN"));

        if (!request.isUserInRole("ROLE_ADMIN")) {
            log.warn("장소 복원을 요청한 유저가 어드민 권한을 가지고 있지 않습니다.");
            return "redirect:/service/loc_recommend";
        }

        locService.rollback(entity.getLoc_no());

        return "redirect:/service/loc_recommend";
    }
}