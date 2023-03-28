<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Laboratory</title>
</head>
<body>
	<h1>追加するカテゴリーを入力してください</h1>
	<form action="AddCategory2Servlet" method="post">
		<input type="text" name="category" placeholder="カテゴリー"><br>
		<input type="submit" value="追加" class="button"><br>
		<a href="AdminHomeServlet">ホームへ</a>
	</form>	
</body>
</html>