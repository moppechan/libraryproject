<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Laboratory</title>
</head>
<body>
	<h1>削除する本のIDを入力してください</h1>
	<form action="DeleteBook2Servlet" method="post">
		<input type="text" name="id"><br>
		<input type="submit" value="削除">
		<a href="AdminHomeServlet">戻る</a>
	</form>
</body>
</html>