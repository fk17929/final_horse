<%@ page contentType="text/html;charset=utf-8"
	import="wb.procWrite, wb.procDB" session = "true"%>
<jsp:useBean id="writeBean" class="wb.procWrite" scope="page" />
<jsp:useBean id="dbBean" class="wb.procDB" scope="page" />
<jsp:setProperty name="writeBean" property="*" />
<%
	if (dbBean.addDoc(writeBean.getIdx(), writeBean.getUserid(),
			writeBean.getTitle(), writeBean.getContents(),
			writeBean.getDate())) {
		response.sendRedirect("list.jsp");
		return;
	}
%>