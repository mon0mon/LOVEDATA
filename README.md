## 소개 및 사이트 링크

데이트 장소 및 코스 추천·공유 웹 서비스

<div align="center">
   <img src="https://img.shields.io/badge/java-007396?style=for-the-badge&logo=java&logoColor=white">
   <img src="https://img.shields.io/badge/spring-6DB33F?style=for-the-badge&logo=spring&logoColor=white">
   <img src="https://img.shields.io/badge/spring security-6DB33F?style=for-the-badge&logo=spring-security&logoColor=white">
   <img src="https://img.shields.io/badge/mysql-4479A1?style=for-the-badge&logo=mysql&logoColor=white">
</div>
<div align="center">
   <img src="https://img.shields.io/badge/html5-E34F26?style=for-the-badge&logo=html5&logoColor=white">
   <img src="https://img.shields.io/badge/css-1572B6?style=for-the-badge&logo=css3&logoColor=white">
   <img src="https://img.shields.io/badge/javascript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black">
   <img src="https://img.shields.io/badge/jquery-0769AD?style=for-the-badge&logo=jquery&logoColor=white">
</div>

- [LOVEDATA 사이트](http://mon0mon.duckdns.org:18080/)
- [Notion](https://scrawny-lizard-383.notion.site/LoveData-39e4f8ace2044240a7ae4f17b61e60e4?pvs=4)
- [문서](https://drive.google.com/drive/folders/1FZcA_fte9l0v0sEVKyW0xwx6NE6h7uUe)

## 개발 인원

- [dorumam(최진웅)](https://github.com/dorumamu/)
- [mon0mon(이민기)](https://github.com/mon0mon/)
- [GyeongNam(조경남)](https://github.com/GyeongNam/)

## 프로젝트 구성
- ERD 다이어그램
![ERD Diagram](https://raw.githubusercontent.com/mon0mon/LOVEDATA/main/img/README.md/Love_Data_ERD.png)
- IA 다이어그램
![IA Diagram ](https://raw.githubusercontent.com/mon0mon/LOVEDATA/main/img/README.md/LoveData_IA.png)
- 흐름도
![FlowChart](https://raw.githubusercontent.com/mon0mon/LOVEDATA/main/img/README.md/Love_Data_Flowchart.png)
- 클래스 다이어그램
![클래스 다이어그램](https://raw.githubusercontent.com/mon0mon/LOVEDATA/main/img/README.md/Love_Data_%ED%81%B4%EB%9E%98%EC%8A%A4%EB%8B%A4%EC%9D%B4%EC%96%B4%EA%B7%B8%EB%9E%A8.png)
- WBS
![WBS](https://raw.githubusercontent.com/mon0mon/LOVEDATA/main/img/README.md/wbs.png)

## mon0mon(이민기)

### 사용한 외부 API

- [행정안전부 주소 API](https://business.juso.go.kr/addrlink/openApi/apiExprn.do)
- [T Map API](https://tmapapi.sktelecom.com/)

### 구현 사항

1. 로그인

   1. 사이트 내 회원가입한 유저 로그인

      - Spring Security를 활용하여 ID, PW로 로그인

   2. SNS 회원가입(카카오, 네이버)을 한 유저 로그인
      - OAuth2를 이용한 소셜 로그인

2. 장소

   1. 추천 장소

      - 등록된 장소들 가운데 사람들이 가장 많이 보고 추천한 순으로 정렬
      - 이름과 위치, 태그를 통한 검색

   2. 지역별 장소

      - 등록된 장소 중에 지역별 장소만을 골라서 보는 메뉴

   3. 장소 상세

      - 장소에 대한 자세한 정보를 알 수 있는 페이지
      - 이용자는 댓글이나 좋아요, 신고 등의 기능을 사용할 수 있음

3. 코스

   1. 추천 코스

      - 등록된 코스들 가운데 사람들이 가장 많이 보고 추천한 순으로 정렬
      - 이름과 위치, 태그를 통한 검색

   2. 코스 상세

      - 코스에 대한 자세한 정보를 알 수 있는 페이지
      - 해당 코스를 구성하는 장소를 확인하고, 해당 장소들을 이동할 때 대략적인 경로를 확인 할 수 있음

4. 어드민

   1. 어드민 대시보드

   - 등록된 사용자 게시글의 전반적인 정보들을 알 수 있는 대시보드
   - 장소, 코스, 댓글, 리뷰 등 사용자들의 모든 활동을 볼 수 있음

   2. 어드민 신고센터

      - 사용자들이 신고한 전반적인 활동에 대해서 처리하는 곳
      - 처리 사유, 정지, 삭제 등으로 처리 할 수 있음
