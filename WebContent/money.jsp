<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" session = "true" import = "java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
//�α����� �䱸�մϴ�.
	String sessID = (String) session.getAttribute("userid");
	if (sessID == null)
		response.sendRedirect("login.jsp");
%>
<%
 request.setCharacterEncoding("utf-8");
 
 Connection con = null;
 Statement stmt = null;
 ResultSet rs = null;
 String jdbc_driver = "com.mysql.jdbc.Driver";
 String jdbc_url = "jdbc:mysql://localhost:3306/webboard?useUnicode=true&characterEncoding=utf8";
 String id = (String)session.getAttribute("userid");

 Class.forName(jdbc_driver);
 con = DriverManager.getConnection(jdbc_url,"root","1234");
 String sql = "SELECT savedmoney FROM member where uid='"+id+"'";
 stmt = con.createStatement();

 rs = stmt.executeQuery(sql);

 //�������� db�� �����մϴ�.
%>
<form action = "savedMoney.jsp" method = "post" ><br>
<% 
//�Էµ� �������� savedmoney�� �ѱ�ϴ�.
while(rs.next()) {
	 out.println("�� ������ : " +rs.getString("savedmoney")+"<BR>");
	 } %><br><br>
������ �ݾ� : <input type = "number" name = "number" step = "1000" max = "10000" min = "0">
<input type = "submit" value = "������">
</form>
</body>
</html>