<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dto.category" %>
<%@page import="java.util.List" %>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/registerbook.css">
<title>Book Laboratory</title>
</head>
<body bgcolor="#F2FDFF">
<%
	request.setCharacterEncoding("UTF-8");
	String errorCode=request.getParameter("error");
	if(errorCode!=null&&errorCode.equals("1")){
%>
	<h2 style="color:red">※登録に失敗しました</h2>
	<div  class="sinki">
	<h1>新規図書登録</h1>
	</div>
	<form action="registerBook2Servlet" method="post" enctype="multipart/form-data">
		図書名：<input type="text" name="bookname"><br>
		出版社：<input type="text" name="publisher"><br>
		著者：<input type="text" name="author"><br>
		出版日：<input type="date" name="pubdate"><br>
		ISBN番号：<input type="text" name="isbn"><br>
		<label for="category">カテゴリー：</label>
		<select name="category">
		<option value="">選択してください</option>	
	      <%
	      List<category> list=(List<category>)request.getAttribute("categories");
	      for (category cate :list ) { 
	      %>
                <option value="<%= cate.getCategory_id() %>"><%= cate.getCategory() %></option>
            <% } %>
	    </select><br>
		表示画像：<input type="file" name="file" accept=".png"><br>
		<input type="submit" value="登録">
		<a href="AdminHomeServlet">戻る</a>
	</form>
<%
	}else{
%>
<h1>新規図書登録</h1>
	<form action="RegisterBook2Servlet" method="post" enctype="multipart/form-data">
		<p class="center" style="font-size:1.4rem;">図書名</p>
		<div class="center2">
		<input type="text" size="15" name="bookname" class="box1" style="font-size:1.4rem;" ><br>
		</div>
		<P class="center" style="font-size:1.4rem;">出版社</P>
		<div class="center2">
		<input type="text" name="publisher" class="box1" style="font-size:1.4rem;" ><br>
		</div>
		<p class="center" style="font-size:1.4rem;">著者</p>
		<div class="center2">
		<input type="text" name="author" class="box1" style="font-size:1.4rem;"><br>
		</div>
		<p class="center" style="font-size:1.4rem;">出版日</p>
		<div class="center2">
		<input type="date" name="pubdate" class="box1" style="font-size:1.4rem;"><br>
		</div>
		<p class="center" style="font-size:1.4rem;">ISBN番号</p>
		<div class="center2">
		<input type="text" name="isbn" class="box1" style="font-size:1.4rem;"><br>
		</div>
		<label for="category"><p class="center" style="font-size:1.4rem;">カテゴリー</p></label>
		<div class="center2">
		<select name="category" class="box1" style="font-size:1.4rem;">
		<option value="">選択してください</option>	
	       <%
	      List<category> list=(List<category>)request.getAttribute("categories");
	      for (category cate :list ) { 
	      %>
                <option value="<%= cate.getCategory_id() %>"><%= cate.getCategory() %></option>
            <% } %>
	    </select><br>
	    </div>
		<p class="center" style="font-size:1.4rem;">表示画像</p>
		<div class="center2">
		<input type="file" name="file" accept=".png" class="box2" style="font-size:1.4rem;"><br>
		</div>
		<div class="yoko_narabi">
		<input type="submit" value="登録" class="button_s">
		
		<a href="AdminHomeServlet" class="button_a">戻る</a>
	</div>
	</form>
<%
	}
%>
</body>
</html>