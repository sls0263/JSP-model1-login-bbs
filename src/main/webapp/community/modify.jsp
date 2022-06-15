<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="proBbs.BbsDTO" %>
<%@ page import="proBbs.BbsDAO" %>

<script language = "javascript">  // 자바 스크립트 시작

function modifyCheck()
  {
   var form = document.modifyform;
   
  if( !form.bbsTitle.value )
   {
    alert( "제목을 적어주세요" );
    form.bbsTitle.focus();
    return;
   }
 
  if( !form.bbsContent.value )
   {
    alert( "내용을 적어주세요" );
    form.bbsContent.focus();
    return;
   }  
 		form.submit();
  } 
</script>


<!DOCTYPE html>
<html>
 <head>
 <title>수정</title>
  <link rel="stylesheet" href="/jspteamproject/assets/css/comunity.css">
 </head>
 <body>
 <% 
		String memberID = null;
		if (session.getAttribute("sessionID") != null) {
			memberID = (String) session.getAttribute("sessionID");
		}
		if (memberID == null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인을 하세요.')");
			script.println("location.href = '../login/login.jsp'");
			script.println("</script>");
		}
		int bbsID = 0;
		if (request.getParameter("bbsID") != null) {
			bbsID = Integer.parseInt(request.getParameter("bbsID"));
		}
		if (bbsID == 0) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('유효하지 않는 글입니다.')");
			script.println("location.href = 'list.jsp'");
			script.println("history.back()");
			script.println("</script>");
		}
		BbsDTO bbs = new BbsDAO().getBbs(bbsID);
		if (!memberID.equals(bbs.getMemberID())) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('권한이 없습니다.')");
			script.println("location.href = 'list.jsp'");
			script.println("history.back()");
			script.println("</script>");
		}
	%>
<jsp:include page="../recycle/top.jsp"></jsp:include>	
<div class="container">
<div class="raw">
<form name=modifyform method=post action="modify_ok.jsp?bbsID=<%=bbsID%>">
  
	<table class="table table-striped" style="text-align:center; border : 1px solid #dddddd">
	   	<thead>
		   	<tr>
		      <th th colspan="2" style="background-color: #eeeeee; text-align:center;">수정</th>
		    </tr>
	    </thead>
   	<tr>
   		<td align="center">제목</td>
		<td colspan=2><input type="text" class="form-control"  name="bbsTitle" size="50" mexlength="50" value="<%= bbs.getBbsTitle() %>"></td>
	</tr>
	<tr>	
		<td align="center">내용</td>
		<td ><textarea class="form-control" name="bbsContent" cols=50 rows=13><%= bbs.getBbsContent() %></textarea></td></td>
	</tr>
	</body> 
	</table>
      <input type="button" class="btn btn-primary pull-right" value="수정" OnClick="javascript:modifyCheck()">
      <input type=button class="btn btn-cancel pull-left" value="취소" OnClick="javascript:history.back(-1)">
	</form>
 	<div>
 </div>
 
</html>