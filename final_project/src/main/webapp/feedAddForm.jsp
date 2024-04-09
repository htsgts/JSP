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
<title>글쓰기</title>
</head>
<body>
	<form action="feedAdd.jsp" method="post" enctype="multipart/form-data">
	<table align=center>
	<tr><td colspan=2 align=center height=40><b>글작성</b><td></tr>
	<tr>
		<td align=right>아이디&nbsp;</td> 
		<td><%= session.getAttribute("id") %></td>
	</tr>
	<tr>
		<td align=right>작성글&nbsp;</td> 
		<td><textarea name="content" rows=10 cols=50></textarea></td>
	</tr>
	<tr>
		<td align=right>이미지&nbsp;</td> 
		<td><input type="file" name="image"></td>
	</tr>
	<tr>
		<td colspan=2 align=center height=50>
			<input type="submit" value="업로드하기">
		</td>
	</tr>
	</table>
	</form>
</body>
</html>