<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String uid = (String) session.getAttribute("id");
if (uid == null) {
    response.sendRedirect("loginForm.jsp");
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
 	function draw_sumbit() {
 		var form = document.getElementsByName("check")[0].value;
 		if(form == "회원탈퇴") {
 			alert("탈퇴되었습니다.");
 			window.location.href = "withdraw.jsp";
 		}
 		else {
 			alert("올바르게 입력해주세요.");
 		}
 	}
</script>
<body>
<form name = outcheck; method="post">
<table align=center>
<tr><td colspan=2 align=center height=40><b>회원탈퇴</b></td></tr>
<tr>
	<td align=center>회원탈퇴를 정자로 입력해주세요.</td>
</tr>
<tr>
	<td align=center><input type="text" name="check" placeholder ="회원탈퇴" required></td>
</tr>
<tr>
	<td  colspan=2 align=center height=50>
		<input type="button" value ="회원탈퇴하기" onclick="draw_sumbit()">
	</td>
</tr> 
</table>
</form>
</body>
</html>