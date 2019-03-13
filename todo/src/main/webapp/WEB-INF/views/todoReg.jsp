<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>할일등록</title>
</head>
<body style="padding-left:10%;">
	<div style="text-align:center;">
		<h1>할일등록</h1>
	</div>
	<div>
		<form action="insertTodo" method="post">
		어떤일인가요?<br>
		<input type="text" name="title" placeholder="script 배우기">
		<br><br>
		누가 할일 인가요?<br>
		<input type="text" name="name" placeholder="홍길동">
		<br><br>
		우선순위 선택:<br>
		<input type="radio" name="seq" value="1"> 1순위 &nbsp;
		<input type="radio" name="seq" value="2"> 2순위 &nbsp;
		<input type="radio" name="seq" value="3"> 3순위 &nbsp;
		<br><br>
		<input type="submit" value="할일등록">
		</form>
	</div>
</body>
</html>