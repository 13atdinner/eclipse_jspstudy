<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 
	[ 주석 ]
	
	- jsp파일 내부에서
	
		1. ctrl+shift+/		: html & jsp 주석
		2. ctrl+shift+\		: 주석해제
		3. ctrl+shift+c		: 한줄 주석
								-> 해당 자료에 맞게 자동으로 주석처리된다
								ex) html	= <퍼센트! 퍼센트>
								ex) 표현식	= <퍼센트-- --퍼센트>
		
	- 눈에 보이지 않는 주석		: 외부에서 접근하는 사용자(제 3자)에게 주석이 보이지 않는다
								-> 온라인에서 개발자도구(F12)로 접근시 
							: 액션태그나 표현식을 주석처리할 때 눈에 안보이는 주석을 달아야 한다
							
		- 형식				: <퍼센트-- --퍼센트>		
-->
<%-- 눈에 보이지 않는 주석 --%>
<html>
<head>
<meta charset="UTF-8">
<title>jsp주석</title>
</head>
<body bgcolor="yellow">
	주석이용 : <!-- 5+3=<%=5+3%> -->
	<!-- 9+3=<%=9+3 /*표현식 내부에 자바주석 사용가능*/ %> -->
	<h1>jsp주석을 확인하는 예제</h1>
	<!-- 표현식을 이용하여 간단한 수식(계산)도 가능 -->
	<%=5+3 %><p>
<%-- 	<%=new java.util.Date() %><p> --%>
</body>
</html>