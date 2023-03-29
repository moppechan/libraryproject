<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.account" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Laboratory</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8");
   account ac = (account)session.getAttribute("input_data");
%>
	<p><%=ac.getMail() %>さん</p>
	<h1>返却する本のIDを入力してください</h1>
	<form action="ReturnBook3Servlet" method="post">
	<input type="text" name="id" placeholder="id"><br>
	<input type="submit" value="返却">
	<a href="LendBookServlet">戻る</a>
</html>