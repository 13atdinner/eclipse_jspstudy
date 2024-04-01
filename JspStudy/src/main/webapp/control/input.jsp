<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자로부터 값을 입력받는 페이지(전송폼)</title>
<!-- 
	- html페이지 미리보면서 작업		: jsp파일 우클릭 -> Open With -> Web Page Editor
									-> 코딩이 바로 적용되어 나타난다
-->
</head>
<body>
	<h1>이름,색상 입력</h1>
	<!-- 
		- action경로		: 복붙이 오타를 줄이기 좋으니 활용하기
						: 현재폴더를 기준으로 한다
						: 다른 폴더	-> 경로+파일명 입력
						: 같은 폴더	-> 파일명 입력
	-->
	<form method="post" action="iftest.jsp">
		이름 : <input type="text" name="name"><p>
		좋아하는 색상 :
		<select name="color">
			<option value="red">빨강색</option>
			<option value="blue">파랑색</option>
			<option value="orange">주황색</option>
			<option value="etc">기타색</option>
		</select><p>
		<input type="submit" value="전송">
	</form>
</body>
</html>