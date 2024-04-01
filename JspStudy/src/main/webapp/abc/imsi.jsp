<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp2번째 예제</title>
</head>
<body>
	<h2>전역변수와 지역변수</h2>
	<%
		String var2="JSP";
	%>
	<%
		String var1=var2+" Web Programming";
	%>
	출력할값 : <%=var1 %><br>
	수식계산 : <%=(3+5) %>
	<hr>
	수식계산2:<%=(3*5)%>
	<%
	// 	int count=3;	// 스크립트릿을 나누어 작성해도 가능
	%>
	<%
		int count=3;	// 지역변수 개념
		for(int i=0; i<count; i++){
			out.println("<h1>Jsp테스트"+i+"</h1>");
		}
		out.println("count = "+count);
	%>
	<%!
	/*  
		[ 선언문 ]		: 스크립트 구문과 동일하게 자바코드 사용 가능	
						: 멤버변수 형태로 인식
							-> 멤버변수 형태라 아래쪽에서 선언해도 위쪽에서 사용 가능하다
						: 현재 jsp페이지 전체에서 위치에 상관없이 사용할 변수,메서드가 필요한 경우 사용
						: 주로 맨 위쪽에 작성한다
							-> 멤버변수의 특성
						: 선언문안에 작성되면 static이라고 생각하면 된다
							
			- 형식		: <퍼센트! 퍼센트>
	*/
	// 	int count=3;	// 순차실행이기 때문에 변수에 값이 할당되기 전에 사용되어 에러(위쪽구문에서)
						// 선언문으로 사용해줌으로써 아래쪽에서 작성되도 위쪽에서 사용가능하게 해준다 
	%>
</body>
</html>
