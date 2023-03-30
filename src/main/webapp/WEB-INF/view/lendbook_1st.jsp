<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Laboratory</title>
<link rel="stylesheet" href="css/LB_1st.css">
</head>
<body bgcolor="#F2FDFF">
	<h1 style="font-size:3.5rem;" class="center">貸し出す利用者のメールアドレスを<br>入力してください</h1>
	<form action="LendBook2Servlet" method="post">
		<input class="email_box" style="font-size:1.5rem;" type="email" name="mail" placeholder="メールアドレス"><br>
		<div class="yoko_narabi">
		<a href="AdminHomeServlet" class="button_a">ホームへ</a>
		<input type="submit" value="送信" class="button_s">
		
		
	</div>
	</form>
	
</body>
</html>