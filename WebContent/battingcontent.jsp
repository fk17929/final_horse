<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.lang.*,java.sql.*" session = "true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body><!-- ������ �ϴ� ������ �Դϴ�. -->
<!-- �α����� �ؾ� �������� ���� �ֽ��ϴ�. -->
<%
		
	String sessID = (String) session.getAttribute("userid");
	if (sessID == null)
		response.sendRedirect("login.jsp");
%>

<form action="battingresultconfirm.jsp" method = "post">
<br><br><center>
<table border="0">
<tr>
<th>���� ����</th>
</tr>
<tr>
<td><input type="radio" name="round" value="1round">round 1</td>
<td><input type="radio" name="round" value="2round">round 2</td>
<td><input type="radio" name="round" value="3round">round 3</td>
<td><input type="radio" name="round" value="4round">round 4</td>
</tr>
<tr>
<th>�½� ����</th>
</tr>
<tr>
<td><input type="radio" name="type" value="�ܽ½�">�ܽ½�</td>
<td><input type="radio" name="type" value="���½�">���½�</td>
</tr>
<tr>


<th>���ָ� ����</th>
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
<th>������ �ݾ�</th>
<td><input type = "number" name = "number" step = "1000" max = "10000" min = "0"></td>
</table>
<input type="submit" value="�����ϱ�">
<input type="reset" value="���">
</form>
</center>
</body>
</html>