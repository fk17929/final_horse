<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" session = "true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원정보 수정</title>
</head>
<body>
<!-- 회원정보 수정 form입니다 -->
<%
	String sessID = (String) session.getAttribute("userid");
	if (sessID == null)
		response.sendRedirect("login.jsp");
%>

<h2>회원정보</h2>

회원정보 수정<br><br><br>
<FORM action="mypagemodify.jsp" method="POST">
<table cellpadding="0" cellspacing="0" width="300" height="72" align="center">
<tr> <td align="center"> 아이디 </td> <td> <input type="text" name="id" value="<%=(String)session.getValue("userid") %>"> </td> <tr>
<tr> <td align="center"> 비밀번호 </td> <td> <input type="password" name="pwd"> </td> <tr>
<tr> <td align="center"> 비밀번호 확인 </td> <td> <input type="password" name="pwd2"> </td> <tr>
<tr> <td align="center"> 이름 </td> <td> <input type="text" name="name"> </td> <tr>
<tr> <td colspan="2" align="center"> <input type="submit" value="회원정보수정"> </td> </tr>
</table>
</form>

</body>
</html>