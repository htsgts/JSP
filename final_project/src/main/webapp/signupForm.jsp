<%@ page language="java" contentType="text/html; charse=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type = "text/javascript">
    function id_check() {
    	var id = document.getElementsByName("id")[0].value;
    
    	if (id=="") {
    		alert ("ID를 입력하세요.");
    		return;
    	}
    	url = "confirmId.jsp?id="+id;
    	window.open(url, "confirm", "width=300, height=200")
    }
    
    function signupcheck() {
    	var form = document.signup;
    	var check_char = /^(?=.*[a-zA-Z])(?=.*[!@#$%^])(?=.*[0-9])/
    	
    	var ps = form.ps.value;
    	
    	if(form.ps.value != form.ps2.value){
    		alert("비밀번호가 일치하지 않습니다!");
			form.ps2.select();
			return false;
    	}
    	else if (form.ps.value.length < 6) {
			alert("비밀번호는 6자 이상으로 입력해야 합니다.");
			form.ps.select();
			return false;
		}
    	else if (!check_char.test(ps)) {
			alert("비밀번호는 영문, 숫자, 특수문자(!,@,#,$,%,^)로 입력해야 합니다.");
			form.ps.select();
			return false;
		}
    	
    	alert("회원가입이 되었습니다.")
    	form.submit();
    }
</script>
<body>
<form name="signup" action="signup.jsp" method="post">
<table align=center>
<tr><td colspan=2 align=center height=40><b>회원가입</b><td></tr>
<tr>
    <td align=right>아이디&nbsp;</td>
    <td><input type="text" name="id" placeholder="Email address" required></td>
    <td colspan=2 align=center height=40>
        <input type="button" value="중복확인" onclick ="id_check()">
    </td>
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
    <td><input type="text" name="name" required></td> 
</tr>
<tr>
    <td colspan=2 align=center height=50>
        <input type="button" value="회원가입하기" onclick="signupcheck()">
    </td>
</tr>
</table>
</form>
</body>
</html>