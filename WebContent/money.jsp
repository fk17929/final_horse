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
//로그인을 요구합니다.
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

 //적립금을 db에 저장합니다.
%>
<form action = "savedMoney.jsp" method = "post" ><br>
<% 
//입력된 적립금을 savedmoney로 넘깁니다.
while(rs.next()) {
	 out.println("내 적립금 : " +rs.getString("savedmoney")+"<BR>");
	 } %><br><br>
충전할 금액 : <input type = "number" name = "number" step = "1000" max = "10000" min = "0">
<input type = "submit" value = "보내기">
</form>
</body>
</html>