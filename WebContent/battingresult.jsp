<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*" session ="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">


</head>
<body>
<!--������ ���÷����� jsp���� �Դϴ�.-->
<h1>���÷� ����</h1>

<!--���� 1���尡 ������ 2���� �غ����� ��Ȳ�Դϴ�. -->
  <h2>!2���� ���� ���� ��Ȳ!</h2>
  <table border = "0">
		<tr>
		<th>����</th>
		<th>�� �̸�</th>
		<th>���</th>
		<th>���÷�</th>
		</tr>

<!-- db���� ���������� �����ɴϴ�. -->	
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con= null;
	Statement stmt = null;
	ResultSet rs = null;
	
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/webboard?useUnicode=true&characterEncoding=utf8","root","1234");
	String query = "SELECT rain,horse,horsepeople,single FROM roundhorse where round = 2";
	stmt = con.createStatement();
	rs = stmt.executeQuery(query);
%>
	
	
		
	<% while(rs.next())
	{
		%>
		<tr>
		<td><%=rs.getString("rain")%></td>
		<td><%=rs.getString("horse")%></td>
		<td><%=rs.getString("horsepeople")%></td>
		<td><%=rs.getString("single")%></td>
		</tr>
		<% } %>

		</table>
</body>
</html>