<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.UserDAO" %>
<%
request.setCharacterEncoding("utf-8"); 
%>
<jsp:useBean id="user"  class="dao.UserBean">
<jsp:setProperty name="user"  property="*" />
</jsp:useBean>
<%
    
	UserDAO dao = new UserDAO();

	if(dao.update(user)){
	%>
		<script>
			alert("회원정보가 수정되었습니다.");
			window.location.href="main.jsp";
		</script>
	<%
	}
	else{
	%>
	<script>
		alert("회원정보 수정중 오류가 발생했습니다.");
		window.location.href="updateForm.jsp";
	</script>
<%
	}

%>