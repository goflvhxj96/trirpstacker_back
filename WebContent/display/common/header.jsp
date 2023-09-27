<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.enjoytrip.member.dto.*"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
MemberDto memberDto = (MemberDto)session.getAttribute("userinfo");
%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<header>
	<nav class="header-nav horiverti-center">
		<div class="horiverti-center">
			<!-- 로고 -->
			<a href="${root}/display/index.jsp"><img id="logo"
				src="${root}/assets/logo1.png" alt="TripStacker Logo" /></a>
			<!-- plan | board -->
			<div>
				<ul class="navigate-list">
					<li><a href="${root}/display/plan/makePlan.jsp" id="plan">Plan</a></li>
					<li>|</li>
					<li><a href="${root}/display/myPlace/myplaceWrite.jsp" id="board">My Place</a></li>
				</ul>
			</div>
		</div>
		<!-- 로그인 전 -->
		<% if(memberDto == null){ %>
		<div class="logout-mode">
			<ul class="navigate-list">
				<li><a href="${root}/display/member/login.jsp" id="login">Sign In</a></li>
				<li>|</li>
				<li><a href="${root}/display/member/join.jsp">Sign Up</a></li>
			</ul>
		</div>
		<%} else { %>
		<!-- 로그인 후 -->
		<div class="login-mode">
			<ul class="navigate-list">
				<li><a href="${root}/display/myPage/myTripBlock/jsp" id="user"><%= memberDto.getNickname() %> 님</a></li>
				<li><a href="${root}/user?action=logout" id="logout">Logout</a></li>
			</ul>
		</div>
		<% } %>
	</nav>
</header>

<script>
const root = "${ root }";
</script>