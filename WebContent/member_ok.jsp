<%@ page contentType="text/html;charset=utf-8"
	import="wb.procMember, wb.procDB" session = "true"%>
<jsp:useBean id="memberBean" class="wb.procMember" scope="page" />
<jsp:useBean id="dbBean" class="wb.procDB" scope="page" />
<jsp:setProperty name="memberBean" property="*" />
<%
	request.setCharacterEncoding("utf-8"); // 한글 처리를 위한 구문
%>
<html>
<head>
<title>회원가입 처리</title>
</head>
<%
	if(dbBean.addMember(memberBean.getUid(),
			memberBean.getUpw(), memberBean.getUname()))
		response.sendRedirect("login.jsp");
%>
</body>
</html>