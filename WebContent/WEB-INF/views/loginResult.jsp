<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="models.User" %>
<%
User user = (User)session.getAttribute("user");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ログイン結果</title>
</head>
<body>
<% if(user != null){ %>
  <p>本人確認ができました</p>
  <p>ようこそ、<%= user.getName() %>さん</p>
  <a href="/DaifugouPage/MainServlet">入場</a>
<% }else{ %>
  <p>本人確認ができません</p>
  <a href="/DaifugouPage/">再確認</a>
<% } %>
</body>
</html>