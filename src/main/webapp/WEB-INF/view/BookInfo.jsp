<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="java.util.ArrayList" %>
<%@page import="dto.reviewList" %>
<%@page import="dto.account" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Laboratory</title>
<link rel="stylesheet"href="css/bookinfo.css">
</head>
<body bgcolor="#F2FDFF">
  <header>
    <div class="header">
    <div class="left"><h1 class="title"><img src="img/aikon.png"alt="" width="70" height="70">Book Laboratory</h1></div>
      <div class="right">
        <form action="./SearchBookServlet"method="get" >
      	<input type="text"style="width: 200px; height: 31px "name="word" class="search" placeholder="本　　検索欄">
    	<input type="submit" class="search_button"style="height:40px" value="検索">
      </form>
      </div>
    <nav class="nav">
      <ul class="menu-group">
      </ul>
    </nav>
  </div>
  </header>
  <div class="box1">
  	<img src="img/aikon.png"alt="" width="70" height="70">
  	<font size="6">
  		<a href="./HomeServlet">ホーム</a>
  		<a href="./SearchServlet">検索</a>
  		<a href="./MypageServlet">マイページ</a>
  	</font>
  	<div class="tate">
  		<a class="linebox_c" href="./LogoutServlet">ログアウト</a>
  	</div>
  </div>
<%
	List<reviewList> list=(List<reviewList>)session.getAttribute("ReviewBookInfo");
	int point=(int)session.getAttribute("BookPoint");
	
	for(reviewList info:list){
%>
	<div class="category">
		<a style="font-size:2.4rem"><%=info.getCategory() %></a>
	</div>
	<div class="bookimg">
		<img src="data:image/png;base64,<%=info.getUrl() %>"width="200" height="274">
	</div>
	<div class="bookinfo">
		<a class="bookname"><%=info.getBookName() %></a><br>
		<a styl="font-size:2rem"class="authorname"><%=info.getAuthorName() %></a><br>
		<a styl="font-size:2rem"class="infotext">評価：<%=point %>.0/5.0</a><br>
	</div>
<%} %>
<h2>・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・</h2>
<div class="kutikomi">
<p style="font-size: 2rem;">この本の口コミ</p>
</div>
<div style="overflow: auto;" class="kutikomi_itiran_box1">
<%
	List<reviewList> reviewlist=(List<reviewList>)session.getAttribute("BookInfoByIsbn");
	for(reviewList review : reviewlist){
%>
      <table style="border-collapse: collapse; border-spacing: 80px;" class="kutikomi_text">
        <tr class="border">
            <td class="max-width" valign="top"style="">
   				<p style="font-size: 2rem;" class="book_title"><%=review.getBookName() %></p>
     			<p style="font-size: 1.2rem;" class="book_kutikomi_text"><%=review.getComment()%></p>
            </td>
         </tr>
      </table>
<%} %>

</body>
</html>