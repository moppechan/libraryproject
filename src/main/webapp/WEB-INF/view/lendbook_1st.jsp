<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Laboratory</title>
<link rel="stylesheet" href="css/lendreturn.css">
</head>
<body>
	<h1>貸し出す利用者のメールアドレスを入力してください</h1>
	<form action="LendBook2Servlet" method="post">
		<input type="email" name="mail" placeholder="メールアドレス"><br>
		<input type="submit" value="送信">
		<a href="AdminHomeServlet">ホームへ</a>
	</form>
</body>
</html>