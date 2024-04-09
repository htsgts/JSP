<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.UserDAO" %>
<%
	request.setCharacterEncoding("utf-8");

	String uid = (String) session.getAttribute("id");
	
	UserDAO dao = new UserDAO();
	if(dao.exists(uid) == false) {
%>
<script>
	alert("회원정보를 찾을수 없습니다.");
	window.location.href="withdrawForm.jsp";
</script>
<%
		return;
	}
	
	if(dao.delete(uid)) {
		session.invalidate();
		response.sendRedirect("loginForm.jsp");
	} else {
%>
<script>
	alert("회원탈퇴 도중 오류가 발생했습니다.");
	window.location.href="withdrawForm.jsp";
</script>
<%
	}
%>
