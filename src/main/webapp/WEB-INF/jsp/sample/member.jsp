<%@ page import="org.springframework.security.core.annotation.AuthenticationPrincipal" %>
<%@ page import="org.springframework.security.core.Authentication" %>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <title>Member</title>
</head>
<body>
<form>
    <h1>Member test....</h1>
    <div>
        <p>사용자 번호 : <sec:authentication property="principal.user_no"/></p>
        <p>사용자 번호 : <sec:authentication property="principal.authorities"/></p>
        <p>사용자 이메일 : <sec:authentication property="principal.user_email"/></p>
        <p>사용자 이름 : <sec:authentication property="principal.user_name"/></p>
        <p>사용자 닉네임 : <sec:authentication property="principal.user_nic"/></p>
        <p>사용자 비밀번호(암호화) : <sec:authentication property="principal.user_pw"/></p>
        <p>사용자 생일 : <sec:authentication property="principal.user_birth"/></p>
        <p>사용자 성별 : <sec:authentication property="principal.user_gen"/></p>
        <p>사용자 연락처 : <sec:authentication property="principal.user_phone"/></p>
        <p>사용자 계정 생성시간 : <sec:authentication property="principal.user_time"/></p>
        <p>사용자 제제여부 : <sec:authentication property="principal.user_Activation"/></p>
        <p>사용자 이메일 수신 여부 : <sec:authentication property="principal.user_emil_re"/></p>
        <p>소셜 로그인 사용 여부 : <sec:authentication property="principal.user_social"/></p>
    </div>
    <sec:csrfInput/>
</form>
</body>
</html>