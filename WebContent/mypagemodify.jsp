<%@ page contentType="text/html;charset=utf-8" import="java.lang.*,java.sql.*" session="true" %>

<HTML>
<HEAD><TITLE>회원 정보 수정</TITLE></HEAD>
<%

	//회원정보 수정 페이지 입니다.
	try{
				
	
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		String pwd2 = request.getParameter("pwd2");
		
		if(!pwd.equals(pwd2))
		{
		%>
		
<SCRIPT type="text/javascript">

	alert("비밀번호가 다릅니다.");
	location.replace("./mypage.jsp");

</SCRIPT>
		<% }%>
		<%
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = null;
		Statement stmt = null;
		//수정된 이름 비번 을 db로 보내줍니다.
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/webboard?useUnicode=true&characterEncoding=utf8","root","1234");
		String sql="UPDATE member SET uname='"+name+"', upw='"+pwd+"' WHERE uid='"+id+"'";
		
		stmt = con.prepareStatement(sql);
		stmt.executeUpdate(sql); 
		stmt.close();
		con.close();

	}catch(Exception e){
	out.println(e);
	}

%>

<SCRIPT type="text/javascript">

	alert("회원정보 수정이 정상적으로 완료되었습니다.");
	location.replace("./content.jsp");

</SCRIPT>