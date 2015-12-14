<%@ page import="com.sun.xml.internal.bind.v2.runtime.Location"%>
<%@ page contentType="text/html;charset=utf-8"
	import="wb.procLogin, wb.procDB"%>
<jsp:useBean id="loginBean" class="wb.procLogin" scope="page" />
<jsp:useBean id="dbBean" class="wb.procDB" scope="page" />
<jsp:setProperty name="loginBean" property="*" />
<%
//로그인이 되면 content.jsp로 넘어가고 안되면 login.jsp로 돌아옵니다.
	if (dbBean.checkUser(loginBean.getUserid(), loginBean.getUserpw())) {
		session.setAttribute("userid", loginBean.getUserid());
		response.sendRedirect("content.jsp");
	} else {
		out.println("아이디 또는 비밀번호를 다시 확인하세요.");
		response.sendRedirect("login.jsp");
	}
%>