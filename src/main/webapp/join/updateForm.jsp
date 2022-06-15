<%@ page contentType = "text/html; charset=utf-8" %>
<html>
<head>
<title>Help Pet 회원가입</title>
<link rel="stylesheet" href="../assets/css/join.css" />
</head>
<body>

<form action="update1.jsp" method="post">
      <div class="joinForm">                                                                                         
      <h2>정보 수정</h2>
      <div class="textForm">
        <input name="memberID" type="text" class="id" placeholder="변경할 아이디">
      </div>
      <div class="textForm">
        <input name="password" type="password" class="pw" placeholder="비밀번호변경">
      </div>
       <div class="textForm">
        <input name="email" type="text" class="email" placeholder="이메일변경">
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
