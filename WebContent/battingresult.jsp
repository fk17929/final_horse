<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*" session ="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">


</head>
<body>
<!--배팅의 배팅률보기 jsp파일 입니다.-->
<h1>배팅률 보기</h1>

<!--현재 1라운드가 끝나고 2라운드 준비중인 상황입니다. -->
  <h2>!2라운드 현재 배팅 상황!</h2>
  <table border = "0">
		<tr>
		<th>레인</th>
		<th>말 이름</th>
		<th>기수</th>
		<th>배팅률</th>
		</tr>

<!-- db에서 라운드정보를 가져옵니다. -->	
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