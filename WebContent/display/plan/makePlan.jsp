<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>TripStacker</title>
    <link rel="stylesheet" href="${root}/css/header_footer.css" />
    <link rel="stylesheet" href="${root}/css/planner.css" />
  </head>
  <body class="backcolor">
    <!-- 헤더 & 네비게이션 -->
    <%@ include file="/display/common/header.jsp" %>

    <!-- 검색 | 지도 | 플랜 -->
    <main>
      <section class="container">
        <!-- 검색 -->
        <article class="search">
          <!-- 검색바 -->
          <div id="searchBar">
            <input
              type="text"
              id="search"
              onkeypress="if( event.keyCode == 13 ){getSearchData();}"
            />
            <img
              src="${root}/assets/glass-black.png"
              alt="glass"
              onclick="getSearchData()"
            />
          </div>
          <!-- 검색 조건 -->
          <div class="filter">
            <div class="sidogugun">
              <select id="sidoSelect">
                <option class="sido" value="">시/도</option>
              </select>
              <select id="gugunSelect">
                <option class="gugun" value="">구/군</option>
              </select>
            </div>
            <div class="service-type">
              <details>
                <summary>✔ 업종 선택</summary>
                <div>
                  <div>
                    <input type="checkbox" name="type" id="s1" value="12" />
                    <label for="s1">관광지</label>
                  </div>
                  <div>
                    <input type="checkbox" name="type" id="s2" value="14" />
                    <label for="s2">문화시설</label>
                  </div>
                  <div>
                    <input type="checkbox" name="type" id="s3" value="15" />
                    <label for="s3">축제•공연•행사</label>
                  </div>
                  <div>
                    <input type="checkbox" name="type" id="s4" value="25" />
                    <label for="s4">여행코스</label>
                  </div>
                  <div>
                    <input type="checkbox" name="type" id="s5" value="28" />
                    <label for="s5">레포츠</label>
                  </div>
                  <div>
                    <input type="checkbox" name="type" id="s6" value="32" />
                    <label for="s6">숙박</label>
                  </div>
                  <div>
                    <input type="checkbox" name="type" id="s7" value="38" />
                    <label for="s7">쇼핑</label>
                  </div>
                  <div>
                    <input type="checkbox" name="type" id="s8" value="39" />
                    <label for="s8">음식점</label>
                  </div>
                </div>
              </details>
            </div>
          </div>
          <!-- 공공데이터의 관광지 리스트 -->
          <div class="location-list">
            <ul>
              <div id="listCnt">전체 0개</div>
            </ul>
          </div>
        </article>

        <!-- 지도 -->
        <article class="map"></article>

        <!-- 플랜 -->
        <article class="plan">
          <span>Plan Start</span>
          <input type="date" name="start-date" id="start-date" />
          <div class="day-plan">
            <!-- 일수 -->
            <details id="day1" onclick="addEventToDayPlan('day1')">
              <summary>
                📜 1일차
                <img
                  src="${root}/assets/cancel.png"
                  alt="지우기"
                  class="day-cancel-img"
                  onclick="deleteDay('day1')"
                />
              </summary>
              <ul></ul>
            </details>
          </div>
          <div class="plan-btns">
            <button type="button" id="day-plan-add" onclick="addDay()">
              추가
            </button>
            <button type="button" id="plan-save">저장</button>
          </div>
        </article>
      </section>
    </main>

    <script
      type="text/javascript"
      src="//dapi.kakao.com/v2/maps/sdk.js?appkey=df5c96b061e80ea455e8d15773c44292"
    ></script>
    <script src="${root}/js/localcode.js"></script>
    <script src="${root}/js/planner.js"></script>
  </body>
</html>
