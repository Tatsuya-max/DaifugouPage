<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="gamesystems.*" %>

<%
Player[] players = new Player[4];
for(int i = 0; i < 4; i++) {
  players[i] = new Player(i, new Hand());
}
Deck deck = new Deck();
int turn;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ゲーム画面</title>
</head>
<body>
<p>一番手のプレイヤーをルーレットで決定します。</p>
<p>....</p>
<% int loopStart = (int)(Math.random()*4); %>
  <p>一番手のプレイヤーは"<%= players[loopStart] %>"です。</p>
  <p>デッキをシャッフルして、カードを配布します。</p>
<%
deck.shuffle();
turn = 0;
while(deck.getCardsLeft() > 0) {
  players[(loopStart+1+turn) % players.length].getHand().addCard(deck.dealCard());
  turn++;
}
%>
<p>配布が完了しました。</p>
<% for(int i = 0; i < players[0].getHand().getCardCount(); i++){ %>
[<%= players[0].getHand().getCard(i) %>]
<% } %>
<p>カードを整理します</p>
<% players[0].getHand().sortByValue(); %>
<p>....</p>
<p>-結果-</p>
<% for(int i = 0; i < players[0].getHand().getCardCount(); i++){ %>
[<%= players[0].getHand().getCard(i) %>]
<% } %>
<br>
<br>
<a href="/DaifugouPage/GameMainServlet">OK</a>
</body>
</html>