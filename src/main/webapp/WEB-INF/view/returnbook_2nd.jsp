<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.account" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Laboratory</title>
<link rel="stylesheet" href="css/addcategory.css">
</head>
<body bgcolor="#F2FDFF">
<% request.setCharacterEncoding("UTF-8");
   account ac = (account)session.getAttribute("input_data");
%>
	<p><%=ac.getMail() %>さん</p>
	<h1 style="font-size:3rem;">返却する本のIDを入力してください</h1>
	<form action="ReturnBook3Servlet" method="post">
	<div class="center2">
		<input type="text" name="id" placeholder="id"><br>
	</div>
	<div class="yoko_narabi">	
		<a href="LendBookServlet" class="button_a">戻る</a>
		<input type="submit" value="返却" class="button_a">
	</div>
</html>