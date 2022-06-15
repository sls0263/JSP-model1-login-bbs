<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, height=device-height, minimum-scale=1.0, maximum-scale=1.0, initial-scale=1.0">
<link rel="stylesheet" href="../assets/css/join.css" />
</head>
<body>
 
    <form action="login.jsp" method="post">
		<div class="joinForm"> 
		<h2>로그인</h2>
       <div class="textForm">
        <input name="memberID" type="text" class="id" placeholder="아이디">
      	</div>

        <div class="textForm">
        <input name="password" type="password" class="pw" placeholder="비밀번호">
     	 </div>
        <input type="submit" class="btn" value="로그인">
		</div>
    </form>

</body>
</html>