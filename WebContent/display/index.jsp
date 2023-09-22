<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib
prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>TripStacker</title>
    <link rel="stylesheet" href="${root}/css/main.css" />
    <link rel="stylesheet" href="${root}/css/header_footer.css" />
  </head>
  <body class="backcolor">
    <!-- 헤더 & 네비게이션 -->
    <%@ include file="/display/common/header.jsp" %>

    <!-- 메인 -->
    <main>
      <section>
        <!-- 검색창 -->
        <article class="search-bar">
          <div>
            <a href="./main.html"
              ><img src="${root}/assets/logo3.png" alt="TripStacker Logo" id="logo2"
            /></a>
          </div>
          <div id="searchBox">
            <img src="${root}/assets/glass-black.png" alt="glass" />
            <input type="text" id="search" placeholder="어떤 여행지를 알고 싶으신가요?" />
          </div>
        </article>

        <!-- 여행 이미지 그리드 -->
        <article class="grid-container">
          <img id="img1" src="${root}/assets/img/img1.jpg" alt="img1" />
          <img id="img2" src="${root}/assets/img/img2.jpg" alt="img2" />
          <img id="img3" src="${root}/assets/img/img3.jpg" alt="img3" />
          <img id="img4" src="${root}/assets/img/img4.jpg" alt="img4" />
          <img id="img5" src="${root}/assets/img/img5.jpg" alt="img5" />
          <img id="img6" src="${root}/assets/img/img6.jpg" alt="img6" />
          <img id="img7" src="${root}/assets/img/img7.jpg" alt="img7" />
          <img id="img8" src="${root}/assets/img/img8.jpg" alt="img8" />
          <img id="img9" src="${root}/assets/img/img9.jpg" alt="img9" />
        </article>

        <!-- 인기 여행 블록 -->
        <article class="plan">
          <h2>인기 여행 플랜</h2>
          <ul>
            <li>
              <img src="../assets/img/img1.jpg" alt="plan1" />
              <table>
                <tbody>
                  <tr>
                    <td>23.09.07 ~ 23.09.18</td>
                    <td>
                      <img id="heart" src="../assets/heart.png" alt="heart" />
                      10
                    </td>
                  </tr>
                  <tr>
                    <td>대한민국, 서울</td>
                    <td>유저명</td>
                  </tr>
                </tbody>
              </table>
            </li>
            <li>
              <img src="../assets/img/img2.jpg" alt="plan2" />
              <table>
                <tbody>
                  <tr>
                    <td>23.09.07 ~ 23.09.18</td>
                    <td>
                      <img id="heart" src="../assets/heart.png" alt="heart" />
                      10
                    </td>
                  </tr>
                  <tr>
                    <td>대한민국, 서울</td>
                    <td>유저명</td>
                  </tr>
                </tbody>
              </table>
            </li>
            <li>
              <img src="../assets/img/img3.jpg" alt="plan3" />
              <table>
                <tbody>
                  <tr>
                    <td>23.09.07 ~ 23.09.18</td>
                    <td>
                      <img id="heart" src="../assets/heart.png" alt="heart" />
                      10
                    </td>
                  </tr>
                  <tr>
                    <td>대한민국, 서울</td>
                    <td>유저명</td>
                  </tr>
                </tbody>
              </table>
            </li>
            <li>
              <img src="../assets/img/img4.jpg" alt="plan4" />
              <table>
                <tbody>
                  <tr>
                    <td>23.09.07 ~ 23.09.18</td>
                    <td>
                      <img id="heart" src="../assets/heart.png" alt="heart" />
                      10
                    </td>
                  </tr>
                  <tr>
                    <td>대한민국, 서울</td>
                    <td>유저명</td>
                  </tr>
                </tbody>
              </table>
            </li>
            <li>
              <img src="../assets/img/img5.jpg" alt="plan5" />
              <table>
                <tbody>
                  <tr>
                    <td>23.09.07 ~ 23.09.18</td>
                    <td>
                      <img id="heart" src="../assets/heart.png" alt="heart" />
                      10
                    </td>
                  </tr>
                  <tr>
                    <td>대한민국, 서울</td>
                    <td>유저명</td>
                  </tr>
                </tbody>
              </table>
            </li>
            <li>
              <img src="../assets/img/img6.jpg" alt="plan6" />
              <table>
                <tbody>
                  <tr>
                    <td>23.09.07 ~ 23.09.18</td>
                    <td>
                      <img id="heart" src="../assets/heart.png" alt="heart" />
                      10
                    </td>
                  </tr>
                  <tr>
                    <td>대한민국, 서울</td>
                    <td>유저명</td>
                  </tr>
                </tbody>
              </table>
            </li>
            <li>
              <img src="../assets/img/img7.jpg" alt="plan7" />
              <table>
                <tbody>
                  <tr>
                    <td>23.09.07 ~ 23.09.18</td>
                    <td>
                      <img id="heart" src="../assets/heart.png" alt="heart" />
                      10
                    </td>
                  </tr>
                  <tr>
                    <td>대한민국, 서울</td>
                    <td>유저명</td>
                  </tr>
                </tbody>
              </table>
            </li>
            <li>
              <img src="../assets/img/img8.jpg" alt="plan8" />
              <table>
                <tbody>
                  <tr>
                    <td>23.09.07 ~ 23.09.18</td>
                    <td>
                      <img id="heart" src="../assets/heart.png" alt="heart" />
                      10
                    </td>
                  </tr>
                  <tr>
                    <td>대한민국, 서울</td>
                    <td>유저명</td>
                  </tr>
                </tbody>
              </table>
            </li>
          </ul>
        </article>

        <!-- 인기 게시글 -->
        <article class="board">
          <h2>인기 게시글</h2>
          <ul>
            <li>
              <img src="../assets/img/img1.jpg" alt="plan1" />
              <table>
                <tbody>
                  <tr>
                    <td>여행 재밌었어요~~</td>
                    <td>
                      <img id="heart" src="../assets/heart.png" alt="heart" />
                      10
                    </td>
                  </tr>
                  <tr>
                    <td>김싸피</td>
                    <td>👀 100</td>
                  </tr>
                </tbody>
              </table>
            </li>
            <li>
              <img src="../assets/img/img2.jpg" alt="plan2" />
              <table>
                <tbody>
                  <tr>
                    <td>여행 재밌었어요~~</td>
                    <td>
                      <img id="heart" src="../assets/heart.png" alt="heart" />
                      10
                    </td>
                  </tr>
                  <tr>
                    <td>김싸피</td>
                    <td>👀 100</td>
                  </tr>
                </tbody>
              </table>
            </li>
            <li>
              <img src="../assets/img/img3.jpg" alt="plan3" />
              <table>
                <tbody>
                  <tr>
                    <td>여행 재밌었어요~~</td>
                    <td>
                      <img id="heart" src="../assets/heart.png" alt="heart" />
                      10
                    </td>
                  </tr>
                  <tr>
                    <td>김싸피</td>
                    <td>👀 100</td>
                  </tr>
                </tbody>
              </table>
            </li>
            <li>
              <img src="../assets/img/img4.jpg" alt="plan4" />
              <table>
                <tbody>
                  <tr>
                    <td>여행 재밌었어요~~</td>
                    <td>
                      <img id="heart" src="../assets/heart.png" alt="heart" />
                      10
                    </td>
                  </tr>
                  <tr>
                    <td>김싸피</td>
                    <td>👀 100</td>
                  </tr>
                </tbody>
              </table>
            </li>
            <li>
              <img src="../assets/img/img5.jpg" alt="plan5" />
              <table>
                <tbody>
                  <tr>
                    <td>여행 재밌었어요~~</td>
                    <td>
                      <img id="heart" src="../assets/heart.png" alt="heart" />
                      10
                    </td>
                  </tr>
                  <tr>
                    <td>김싸피</td>
                    <td>👀 100</td>
                  </tr>
                </tbody>
              </table>
            </li>
            <li>
              <img src="../assets/img/img6.jpg" alt="plan6" />
              <table>
                <tbody>
                  <tr>
                    <td>여행 재밌었어요~~</td>
                    <td>
                      <img id="heart" src="../assets/heart.png" alt="heart" />
                      10
                    </td>
                  </tr>
                  <tr>
                    <td>김싸피</td>
                    <td>👀 100</td>
                  </tr>
                </tbody>
              </table>
            </li>
          </ul>
        </article>
      </section>
    </main>
	
	<!-- 풋터 -->
    <%@ include file="/display/common/footer.jsp" %>

    <!-- js -->
    <script src="${root}/js/main.js"></script>
  </body>
</html>
