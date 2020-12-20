<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
   integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
   crossorigin="anonymous">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
   integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
   crossorigin="anonymous">

  <link rel="stylesheet" href="./css/style.css">
  <title>ログイン画面</title>
</head>
<body>
  <div class="contents-wrapper">
    <div class="content-left">
    <h1>大富豪喫茶へようこそ</h1>
    <p>ここではトランプゲーム『大富豪』を行うことができます</p>
    <br>
    <br>
    <p>名前とIDを入力してください</p>
    <form action="/DaifugouPage/LoginServlet" method="post">
      <p>名前：<input type="text" name="name"><br></p>
      <p>ID：<input type="password" name="pass"><br></p>
      <div id="submit_button"><input type="submit" value="本人確認"></div>
    </form>
    <p>※簡易ログイン：名前とIDを入力せず本人確認</p>
    </div>
  </div>
<!--
<div class="content-right">
<p>
<a href="">ルールを見る</a>
</p>
</div>
-->
  <script language="javascript" type="text/javascript">
    const submit = document.getElementById("submit_button");
    submit.addEventListener('mouseout', () => {
      submit.style.color = "black";
    });
    submit.addEventListener('mouseover', () => {
      submit.style.color = "orange";
    });
  </script>
</body>
</html>