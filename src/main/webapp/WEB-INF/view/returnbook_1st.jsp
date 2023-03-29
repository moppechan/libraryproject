<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Laboratory</title>
</head>
<body>
	<h1>返却する利用者のメールアドレスを入力してください</h1>
	<form action="ReturnBook2Servlet" method="post">
		<input type="email" name="mail" placeholder="メールアドレス"><br>
		<input type="submit" value="送信">
		<a href="AdminHomeServlet">ホームへ</a>
	</form>
</body>
</html>