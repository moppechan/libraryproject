<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Laboratory</title>
<link rel="stylesheet" href="css/returnbook.css">
</head>
<body>
	<h1>返却する利用者のメールアドレスを<br>入力してください</h1>
	<form action="ReturnBook2Servlet" method="post">
		<input type="email" name="mail" placeholder="メールアドレス" class="box"><br>
		<div class="yoko_narabi">
		<a href="AdminHomeServlet" class="button_s">ホームへ</a>
		<input type="submit" value="送信" class="button_a">
		</div>
	</form>
</body>
</html>