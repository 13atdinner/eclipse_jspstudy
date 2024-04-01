<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청을 받아서 처리해주는 페이지(응답페이지)</title>
</head>
<%!
	String msg;			// 전달받은 값은 영문	-> 한글로 번역해서 저장할 변수
%>
<%
	/*
		[ 한글처리 ]	: request객체를 받을 때 한글이 깨지지 않게 처리해주는 작업
					: 반드시 위쪽에 작성한다
						-> 매개변수를 전달받은 후에 적용하면 이미 깨져있기 때문에
		
			- 형식	: request.setCharacterEncoding("UTF-8");
	*/
	request.setCharacterEncoding("UTF-8");
%>
<%
	/*
		[ request객체 ]	: 요청객체
						: 요청하는 페이지가 전달해주는 매개변수를 받아서 처리하는 객체
						: 무조건 문자열이다
						
			- 형식		: String 전달받은변수명=request.getParameter("매개변수명");
							-> 전달받은변수명과 매개변수명은 동일하게 선언하기
	*/
	String name=request.getParameter("name");
	String color=request.getParameter("color");
	
	// 디버깅코딩		: 코딩 중간마다 콘솔에 값 or 기능을 출력하여 오류가 없는지 확인하는 코딩방법
	System.out.println("name = "+name);
	System.out.println("color = "+color);
	
	// equals		: 문자열 비교
	if(color.equals("red")){
		msg="빨강색";
	}else if(color.equals("blue")){
		msg="파랑색";
	}else if(color.equals("orange")){
		msg="주황색";
	}else{
		color="violet";
		msg="기타색(보라)";
	}
%>
<body bgcolor="<%=color%>">
	<%=name %>님이 좋아하는 색상은 <%=color %>입니다
</body>
</html>