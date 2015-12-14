
<%@ page contentType="text/html;charset=utf-8" session="false" %>
<HTML>
<HEAD><TITLE>로그아웃</TITLE></HEAD>
<%
	
	HttpSession session=request.getSession(false);
	session.invalidate();
%>
<SCRIPT type="text/javascript">
alert("정상적으로 로그아웃 처리되었습니다.");
location.replace("./content.jsp");
</SCRIPT>