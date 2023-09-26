<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib
prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>TripStacker</title>
    <link rel="stylesheet" href="${root}/css/join.css" />
    <link rel="stylesheet" href="${root}/css/header_footer.css" />
  </head>
  <body class="backcolor">
    <!-- 헤더 & 네비게이션 -->
    <%@ include file="/display/common/header.jsp" %>

    <!-- 메인-로그인/회원가입 창 -->
    <main>
      <div class="container right-panel-active">
        <!-- 회원가입 -->
        <div class="container__form container--signup">
          <form action="#" class="form" id="form1">
            <h2 class="form__title">회원가입</h2>
            <input type="text" id="signup-id" name="signup-id" placeholder="아이디" class="input" />
            <div id="id-dup-check" class="dup-check"></div>
            <input type="text" id="nickname" name="nickname" placeholder="닉네임" class="input" />
            <div id="nick-dup-check" class="dup-check"></div>
            <input type="email" name="email" placeholder="이메일" class="input" />
            <input type="password" name="password" placeholder="비밀번호" class="input" />
            <input type="password" placeholder="비밀번호 확인" class="input" />
            <button class="btn">회원가입</button>
          </form>
        </div>

        <!-- 로그인 -->
        <div class="container__form container--signin">
          <form action="#" class="form" id="form2" method="POST">
          <input type="hidden" name="action" value="login"/>
            <h2 class="form__title">로그인</h2>
            <input type="text" placeholder="아이디" class="input" />
            <input type="password" placeholder="비밀번호" class="input" />
            <div class="link" id="id-record"><span>아이디 저장</span><input type="checkbox" /></div>
            <a href="#" class="link">비밀번호 찾기</a>
            <button class="btn">로그인</button>
          </form>
        </div>
 
        <!-- Overlay -->
        <div class="container__overlay">
          <div class="overlay">
            <div class="overlay__panel overlay--left">
              <button class="btn" id="signIn">로그인</button>
            </div>
            <div class="overlay__panel overlay--right">
              <button class="btn" id="signUp">회원가입</button>
            </div>
          </div>
        </div>
      </div>
    </main>
    <!-- 풋터 -->
    <%@ include file="/display/common/footer.jsp" %>
    <script>var root = ${root}</script>
    <script src="${root}/js/login.js"></script>
  </body>
</html>
