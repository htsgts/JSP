<%@page import="util.ConnectionPool"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.*" %>

<%
    String uid = (String) session.getAttribute("id");
    if (uid == null) {
        response.sendRedirect("loginForm.jsp");
        return;
    }
    session.setAttribute("id", uid);
    
    Connection conn = ConnectionPool.get();
	String sql = "SELECT id, name FROM user";
    PreparedStatement stmt = conn.prepareStatement(sql);
    ResultSet rs = stmt.executeQuery();
%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>

<form action="update.jsp" method="post">
<table align=center>
<tr><td colspan=2 align=center height=40><b>회원가입</b><td></tr>
<tr>
    <td align=right>아이디&nbsp;</td>
    <td> <%= session.getAttribute("id") %> </td>
</tr>
<tr>
    <td align=right>패스워드&nbsp;</td>
    <td><input type="password" name="ps" required></td>
</tr>
<tr> 
    <td align=right>패스워드(확인)&nbsp;</td>
    <td><input type="password" name="ps2" required></td>
</tr>
<tr>
    <td align=right>이름&nbsp;</td>
    <td><input type="text" name="name" value = "" required></td> 
</tr>
<tr>
    <td colspan=2 align=center height=50>
        <input type="submit" value="회원정보수정하기">
    </td>
</tr>
</table>
</form>

</body>
</html>