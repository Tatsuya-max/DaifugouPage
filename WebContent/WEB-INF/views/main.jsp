<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="models.User" %>
<%
User user = (User)session.getAttribute("user");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>メイン画面</title>
</head>
<body>
<p>大富豪の館</p>
<p>
  <%= user.getName() %>さん
</p>
<table border="1">
  <tr align="center">
    <th>勝利数</th>
    <th><%= user.getWins() %></th>
  </tr>
  <tr align="center">
    <td>勝率</td>
    <td><%= user.getWinningPercentage() %></td>
  </tr>
    <tr align="center">
    <td>プレイ回数</td>
    <td><%= user.getTotalGames() %></td>
  </tr>
</table>
<br>
<form action="/DaifugouPage/MainServlet" method="post">
<input type="submit" value="ゲーム開始">
</form>
<br>
<%--
<p>追加ルールの設定</p>
・Jバック
・しばり
・8切り
・スペ3返し
・都落ち
・反則上がり
--%>
<a href="/DaifugouPage/LogoutServlet">退場</a>
</body>
</html>