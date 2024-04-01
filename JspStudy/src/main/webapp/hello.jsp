<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp1번째 예제</title>
	<%
		out.println("작성위치는 상관없다");
	%>
</head>
<body>
<!--  
	- jsp파일 생성경로			: jsp프로젝트 -> src -> main -> webapp -> 폴더생성 -> jsp파일생성
-->
	<%
	/*  
		[ 스크립트릿 ]			: jsp에서 자바코드를 쓰기위해 사용하는 특수기호
							: 내부에 태그,표현식 사용 불가
							: 여러개 작성 가능
							: 작성위치는 상관없다
							: 순차적으로 실행된다
								-> 하나 이상 작성했다면 위쪽에서부터 순차 실행
							
			- 형식			: <퍼센트 퍼센트>
	*/
		// System.out.println	: 콘솔에 출력(에러를 잡기위해 변수값 출력)
		// out.println			: 화면에 출력							-> 서버에서 실행된다
		String str="홍길동";
		System.out.println("str = "+str);
		out.println("<h1>"+"str="+str+"</h1>");
	/*  
		<script>
			document.write("<h1>"+"str = "+str+"</h1>"); 과 동일		-> 클라이언트에서 실행된다
		</script>
	*/
	%>
</body>
	<%
		out.println("여러개 사용가능");
	%>
</html>