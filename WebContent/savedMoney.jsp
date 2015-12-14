<%@ page contentType="text/html;charset=utf-8"
	import="java.lang.*, java.sql.*" session="true"%>


<%
	String id = (String) session.getAttribute("userid");

	request.setCharacterEncoding("utf-8");
	int smoney = Integer.parseInt(request.getParameter("number"));

	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;

		String jdbc_url = "jdbc:mysql://localhost:3306/webboard?useUnicode=true&characterEncoding=utf8";

		con = DriverManager.getConnection(jdbc_url, "root", "1234");
		stmt = con.createStatement();
		String sql0 = "select savedmoney from member where uid='" + id
				+ "'";

		rs = stmt.executeQuery(sql0);
		while (rs.next()) {
			int savedmoney = Integer.parseInt(rs
					.getString("savedmoney"));
			smoney = smoney + savedmoney;
		}

		String sql = "update member set savedmoney = '" + smoney
				+ "' where uid = '" + id + "'";
		stmt = con.createStatement();

		stmt.executeUpdate(sql);

		stmt.close();

		con.close();
		rs.close();
	} catch (Exception e) {
		out.println(e);
		return;
	}
%>
<HTML>
<HEAD>
</HEAD>
<BODY>
	# 저장 결과
	<P>
		<%
			response.sendRedirect("money.jsp");		%>
	
</body>
</html>