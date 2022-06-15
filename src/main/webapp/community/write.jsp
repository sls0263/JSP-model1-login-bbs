<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>


<script language = "javascript">  // 자바 스크립트 시작

function writeCheck()
  {
   var form = document.writeform;
   
  if( !form.bbsTitle.value )
   {
    alert( "제목을 적어주세요" );
    form.title.focus();
    return;
   }
 
  if( !form.bbsContent.value )
   {
    alert( "내용을 적어주세요" );
    form.memo.focus();
    return;
   }
 
  form.submit();
  }
 </script>

<!DOCTYPE html>
<html>
 <head>
 <title>게시판</title>
 <link rel="stylesheet" href="/jspteamproject/assets/css/comunity.css">
 </head>
 <body>
 <jsp:include page="../recycle/top.jsp"></jsp:include>	
<div class="container">
<div class="raw">
<form name=writeform method=post action="writeAction.jsp">

	    <table class="table table-striped" style="text-align:center; border : 1px solid #dddddd">
	   	<thead>
		   	<tr>
		      <th th colspan="2" style="background-color: #eeeeee; text-align:center;">글쓰기</th>
		    </tr>
	    </thead>
	   	<tbody>
	     
		     <tr>
				<td colspan=2><input type="text" class="form-control" placeholder="제목"  name="bbsTitle" size="50" mexlength="100"></td>
			 </tr>
		     <tr>
		      	<td colspan=2><textarea class="form-control" placeholder="내용" name="bbsContent" style="height:350px";></textarea></td>
		     </tr>
		     
		     </tbody>
	 		</table>
	 		
	 		
	     
	      <input type=button class="btn btn-primary pull-right" value="등록" OnClick="javascript:writeCheck();">
	      <input type=button class="btn btn-cancel pull-left" value="취소" OnClick="javascript:history.back(-1)">
	  </form>
	 </div>
 </div>
</body>
 </html>