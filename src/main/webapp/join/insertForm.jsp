<%@ page contentType = "text/html; charset=utf-8" %>
<html>
<head>
<title>Help Pet 회원가입</title>
<link rel="stylesheet" href="../assets/css/join.css" />
</head>
<body>

<form action="insert1.jsp" method="post">
      <div class="joinForm">                                                                                         
      <h2>회원가입</h2>
      <div class="textForm">
        <input name="memberID" type="text" class="id" placeholder="아이디">
      </div>
      <div class="textForm">
        <input name="password" type="password" class="pw" placeholder="비밀번호">
      </div>
      <div class="textForm">
        <input name="name" type="text" class="name" placeholder="이름">
      </div>
       <div class="textForm">
        <input name="email" type="text" class="email" placeholder="이메일">
      </div>
      <div class="textForm">
      	<input name="gender" type="text" class="gender" placeholder="성별">
      </div>
      <div class="textForm">
        <input name="phone" type="number" class="phone" placeholder="전화번호">
      </div>
      <input type="submit" class="btn" value="J O I N"/>
      </div>
    </form>
</body>
</html>
