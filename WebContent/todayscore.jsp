<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" session="true" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>출전정보</h2>
	<%
		Class.forName("com.mysql.jdbc.Driver");
		 String DB_URL =
		"jdbc:mysql://localhost:3306/webboard?useUnicode=true&characterEncoding=utf8";
		 String DB_USER = "root";
		 String DB_PASSWORD= "1234";

		 Connection con= null;
		 Statement stmt = null;
		 ResultSet rs = null;

		 try {

		 con = DriverManager.getConnection(DB_URL,DB_USER,DB_PASSWORD);
		 stmt = con.createStatement();


		 String query = "SELECT rain, horse, horsepeople,result FROM roundhorse where round = 1";
		  rs = stmt.executeQuery(query);
	%>
	<h2>1라운드</h2>
	<table border="0" >
		<tr>
			<td>레인</td>
			<td>말</td>
			<td>기수</td>
			<td>경기기록</td>
		</tr>
		<%
			while(rs.next()) {
		%><tr>
			<td><%=rs.getInt("rain")%></td>
	
			<td><%=rs.getString("horse")%></td>
			<td><%=rs.getString("horsepeople")%></td>
			<td><%=rs.getString("result")%></td>
			
		</tr>
		<%
			}
		%>
	</table>
	
	<%
		rs.close();


	 stmt.close();

	 con.close();

	 } catch (SQLException e) {
	 out.println("err:"+e.toString());
	 return;
	 }
	%>
	<%

		 try {

		 con = DriverManager.getConnection(DB_URL,DB_USER,DB_PASSWORD);
		 stmt = con.createStatement();


		 String query = "SELECT rain, horse, horsepeople, result FROM roundhorse where round = 2";
		  rs = stmt.executeQuery(query);
	%>
	<h2>2라운드</h2>
	<table border="0" >
		<tr>
			<td>레인</td>
			<td>말</td>
			<td>기수</td>
			<td>경기기록</td>
		</tr>
		<%
			while(rs.next()) {
		%><tr>
			<td><%=rs.getInt("rain")%></td>
	
			<td><%=rs.getString("horse")%></td>
			<td><%=rs.getString("horsepeople")%></td>
			<td><%=rs.getString("result")%></td>
			
		</tr>
		<%
			}
		%>
	</table>
	
	<%
		rs.close();


	 stmt.close();

	 con.close();

	 } catch (SQLException e) {
	 out.println("err:"+e.toString());
	 return;
	 }
	%>
	<%

		 try {

		 con = DriverManager.getConnection(DB_URL,DB_USER,DB_PASSWORD);
		 stmt = con.createStatement();


		 String query = "SELECT rain, horse, horsepeople, result FROM roundhorse where round = 3";
		  rs = stmt.executeQuery(query);
	%>
	<h2>3라운드</h2>
	<table border="0" >
		<tr>
			<td>레인</td>
			<td>말</td>
			<td>기수</td>
			<td>경기기록</td>
		</tr>
		<%
			while(rs.next()) {
		%><tr>
			<td><%=rs.getInt("rain")%></td>
	
			<td><%=rs.getString("horse")%></td>
			<td><%=rs.getString("horsepeople")%></td>
			<td><%=rs.getString("result")%></td>
			
		</tr>
		<%
			}
		%>
	</table>
	
	<%
		rs.close();


	 stmt.close();

	 con.close();

	 } catch (SQLException e) {
	 out.println("err:"+e.toString());
	 return;
	 }
	%>
	<%

		 try {

		 con = DriverManager.getConnection(DB_URL,DB_USER,DB_PASSWORD);
		 stmt = con.createStatement();


		 String query = "SELECT rain, horse, horsepeople,result FROM roundhorse where round = 4";
		  rs = stmt.executeQuery(query);
	%>
	<h2>4라운드</h2>
	<table border="0" >
		<tr>
			<td>레인</td>
			<td>말</td>
			<td>기수</td>
			<td>경기기록</td>
		</tr>
		<%
			while(rs.next()) {
		%><tr>
			<td><%=rs.getInt("rain")%></td>
	
			<td><%=rs.getString("horse")%></td>
			<td><%=rs.getString("horsepeople")%></td>
			<td><%=rs.getString("result")%></td>
			
		</tr>
		<%
			}
		%>
	</table>
	
	<%
		rs.close();


	 stmt.close();

	 con.close();

	 } catch (SQLException e) {
	 out.println("err:"+e.toString());
	 return;
	 }
	%>
	
</body>
</html>