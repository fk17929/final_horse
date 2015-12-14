<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.lang.*,java.sql.*" session = "true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body><!-- 배팅을 하는 페이지 입니다. -->
<!-- 로그인을 해야 페이지를 볼수 있습니다. -->
<%
		
	String sessID = (String) session.getAttribute("userid");
	if (sessID == null)
		response.sendRedirect("login.jsp");
%>

<form action="battingresultconfirm.jsp" method = "post">
<br><br><center>
<table border="0">
<tr>
<th>라운드 선택</th>
</tr>
<tr>
<td><input type="radio" name="round" value="1round">round 1</td>
<td><input type="radio" name="round" value="2round">round 2</td>
<td><input type="radio" name="round" value="3round">round 3</td>
<td><input type="radio" name="round" value="4round">round 4</td>
</tr>
<tr>
<th>승식 선택</th>
</tr>
<tr>
<td><input type="radio" name="type" value="단승식">단승식</td>
<td><input type="radio" name="type" value="연승식">연승식</td>
</tr>
<tr>


<th>경주마 선택</th>
</tr>
</table>
<table border = "0">
<tr>
<td><input type="radio" name="horse" value="1">1</td>
<td><input type="radio" name="horse" value="2">2</td>
<td><input type="radio" name="horse" value="3">3</td>
<td><input type="radio" name="horse" value="4">4</td>
<td><input type="radio" name="horse" value="5">5</td>
<td><input type="radio" name="horse" value="6">6</td>
<td><input type="radio" name="horse" value="7">7</td>
<td><input type="radio" name="horse" value="8">8</td>
<td><input type="radio" name="horse" value="9">9</td>
<td><input type="radio" name="horse" value="10">10</td>

</tr>
</table>
<table border = "0">
<tr>
<th>배팅할 금액</th>
<td><input type = "number" name = "number" step = "1000" max = "10000" min = "0"></td>
</table>
<input type="submit" value="배팅하기">
<input type="reset" value="취소">
</form>
</center>
</body>
</html>