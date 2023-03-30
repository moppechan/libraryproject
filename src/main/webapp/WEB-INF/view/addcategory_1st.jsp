<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Laboratory</title>
<link rel="stylesheet" href="css/addcategory.css">
</head>
<body bgcolor="#F2FDFF">
	<h1 style="font-size:3rem;">追加するカテゴリーを入力してください</h1>
	<form action="AddCategory2Servlet" method="post">
		<div class="center2">
			<input type="text" name="category" placeholder="カテゴリー" class="box1" style="font-size:2.4rem;"><br>
		</div>	
		<div class="yoko_narabi">
			<a href="AdminHomeServlet" class="button_a">ホームへ</a>
			<input type="submit" value="追加" class="button_s"><br>
		</div>	
	</form>	
</body>
</html>