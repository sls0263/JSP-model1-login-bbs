<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../assets/css/style.css">
<script src="../jQueryAssets/jquery-1.11.1.min.js"></script>
</head>
<body>
<div style="text-align:center; margin-left:880px">
<%	
	if(session.getAttribute("sessionID") != null) {
		out.println("<a href=../login/logout.jsp>로그아웃</a>");
		out.println("<a href=../join/updateForm.jsp >정보수정</a>");
	} else {
		out.println("<a href=../login/loginForm.jsp >로그인</a>");
		out.println("<a href=../join/insertForm.jsp >회원가입</a>");
	}
	
%> 
</div>

<!--로고-->
    <div id = "mainimg">
    <a href="../index.jsp"><img src="/jspteamproject/assets/css/images/MainLogo2.png" width="150px" height="150px"></a>
    </div>

    <!--메뉴바-->
    <nav>
        <div id="nav">
            <ul class="main">
                <li><a href="#">입양공고</a>
                <ul class="sub">
                    <ul>
                      <li><a href="#">강아지</a></li>
                      <li><a href="#">고양이</a></li>
                      <li><a href="#">그 외 동물</a></li>
                    </ul>  
                </ul>
                </li>
                <li><a href="#">실종소식</a>
                <ul class="sub">
                    <ul>
                      <li><a href="../community/list.jsp">제보게시판</a></li>
                      <li><a href="../reportBoard/report.jsp">신고게시판</a></li>
                    </ul>  
                </ul>
                </li>
                <li><a href="#">입양후기</a>
                <ul class="sub">
                    <ul>
                      <li><a href="#">강아지</a></li>
                      <li><a href="#">고양이</a></li>
                      <li><a href="#">그 외 동물</a></li>
                    </ul>  
                </ul>
                </li>
                <li><a href="#">정보</a>
                <ul class="sub">
                    <ul>
                      <li><a href="#">공지사항</a></li>
                      <li><a href="#">후원안내</a></li>
                      <li><a href="../infomation/infolist.jsp">정보공유게시판</a></li>
                    </ul>  
                </ul>
                </li>
            </ul>
        </div>
        <script>
    $(document).ready(function(){
    $(".main>li").mouseover(function(){
        $(this).children(".sub").stop().slideDown(200);
    });
    $(".main>li").mouseleave(function(){
        $(this).children(".sub").stop().slideUp(200);
    });

});
    </script>
    </nav>
    <!--로그인/로고/메뉴바-->
</body>
</html>