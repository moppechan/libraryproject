<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/registerBook.css">
<title>Book Laboratory</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String errorCode=request.getParameter("error");
	if(errorCode!=null&&errorCode.equals("1")){
%>
	<h2 style="color:red">※登録に失敗しました</h2>
	<h1>新規図書登録</h1>
	<form action="registerBook2Servlet" method="post" enctype="multipart/form-data">
		図書名：<input type="text" name="bookname"><br>
		出版社：<input type="text" name="publisher"><br>
		著者：<input type="text" name="author"><br>
		出版日：<input type="date" name="pubdate"><br>
		ISBN番号：<input type="text" name="isbn"><br>
		<label for="category">カテゴリ：</label>
		<select id="category" name="category">
		<option value="">選択してください</option>	
	      
	    </select>
		表示画像：<input type="file" name="url"><br>
		<input type="submit" value="登録">
		<a href="AdminHomeServlet">戻る</a>
	</form>
<%
	}else{
%>
<h1>新規図書登録</h1>
	<form action="RegisterBook2Servlet" method="post" enctype="multipart/form-data">
		図書名：<input type="text" name="bookname"><br>
		出版社：<input type="text" name="publisher"><br>
		著者：<input type="text" name="author"><br>
		出版日：<input type="date" name="pubdate"><br>
		ISBN番号：<input type="text" name="isbn"><br>
		<label for="category">カテゴリ：</label>
		<select id="category" name="category">
		<option value="">選択してください</option>	
	    </select>
		表示画像：<input type="file" name="url" accept=".png"><br>
		<input type="submit" value="登録">
		<a href="AdminHomeServlet">戻る</a>
	</form>
</body>
</html>