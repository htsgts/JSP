<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="util.ConnectionPool" %>
<%
	request.setCharacterEncoding("utf-8");
    String uid = request.getParameter("id");
    String upass = request.getParameter("ps");
    String uname = request.getParameter("name");
    
    String sql = "INSERT INTO user(id, password, name) VALUES(?, ?, ?)";
    
    Connection conn = ConnectionPool.get();
    PreparedStatement stmt = conn.prepareStatement(sql);
    
    stmt.setString(1, uid);
    stmt.setString(2, upass);
    stmt.setString(3, uname); 
    
    int count = stmt.executeUpdate();
    if (count == 1) {
		session.setAttribute("id", uid);
%>
	<script>
		alert("회원가입이 완료되었습니다.");
		window.location.href="main.jsp";
	</script>
<%
		
    }
    else { 
%>    	

    	<script>
    		alert("오류가 발생했습니다.");
    		window.location.href="signupForm.jsp";
    	</script>
<%
    }
    
    stmt.close(); conn.close();
%>
