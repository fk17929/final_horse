<%@ page contentType="text/html;charset=utf-8"
	import="wb.procWrite, wb.procDB, wb.dbSchema" session = "true"%>
<%@ include file="./common/jsp/head.jsp"%>
<title>Insert title here</title>
<script src="./common/js/checkForms.js" type="Text/JavaScript"></script>
</head>
<jsp:useBean id="writeBean" class="wb.procWrite" scope="page" />
<jsp:useBean id="dbBean" class="wb.procDB" scope="page" />
<jsp:setProperty name="writeBean" property="*" />
<%!dbSchema doc;%>
<%
	String sessID = (String) session.getAttribute("userid");
	if (sessID == null)
		response.sendRedirect("login.jsp");
%>
<%
	if (writeBean.getIdx() != null) {
		if (writeBean.getMode().equalsIgnoreCase("E")
				|| writeBean.getMode().equalsIgnoreCase("R")) {
			if (writeBean.getMode().equalsIgnoreCase("R")) {
				dbBean.addHit(writeBean.getIdx());
			}
			doc = dbBean.getDoc(writeBean.getIdx());
		} else if (writeBean.getMode().equalsIgnoreCase("D")) {
			dbBean.delDoc(writeBean.getIdx());
			response.sendRedirect("list.jsp");
		}
	}
%>
<body>
	<jsp:getProperty name="writeBean" property="prtmode" />
	<form action="write_ok.jsp" method="post" name="regitform">
		<table cellspacing=1 width=600 border=1>
			<tr>
				<td>Writer</td>
				<%
					if (writeBean.getIdx() == "") {
				%>
				<td><input readonly type="text" name="uid" value=<%=sessID%>>
				</td>
				<%
					} else {
				%>
				<td><input <%if (writeBean.getMode().equalsIgnoreCase("R")) {%>
					readonly <%}%> type="text" name="uid" value=<%=doc.getUserId()%>>
				</td>
				<%
					}
				%>
			</tr>
			<tr>
				<td>Title</td>
				<%
					if (writeBean.getIdx() == "") {
				%>
				<td><input type="text" name="title"></td>
				<%
					} else {
				%>
				<td><input <%if (writeBean.getMode().equalsIgnoreCase("R")) {%>
					readonly <%}%> type="text" name="title"
					value=<%=doc.getDocTitle()%>></td>
				<%
					}
				%>
			</tr>
			<tr>
				<td>Contents</td>
				<%
					if (writeBean.getIdx() == "") {
				%>
				<td><textarea name="contents" cols="100" rows="20"></textarea></td>
				<%
					} else {
				%>
				<td><textarea
						<%if (writeBean.getMode().equalsIgnoreCase("R")) {%> readonly
						<%}%> name="contents" cols="100" rows="20"><%=doc.getDocContents()%></textarea></td>
				<%
					}
				%>
			</tr>
		</table>
		<%
			if (writeBean.getIdx() == "") {
		%>
		<input type="submit" value="WRITE" name="submitbtn">
		<%
			} else {
		%>
		<input type="button" value="LIST" name="list" onClick="goList()">
		<%
			if (doc.getUserId().equalsIgnoreCase(sessID)) {
					if (writeBean.getMode().equalsIgnoreCase("R")) {
		%>
		<input type="button" value="EDIT" name="edit"
			onClick="goEdit(<%=writeBean.getIdx()%>)"> <input
			type="button" value="DELETE" name="delete"
			onClick="goDelete(<%=writeBean.getIdx()%>)">
		<%
			} else {
		%>
		<input type="hidden" name="idx" value=<%=writeBean.getIdx() %>>
		<input type="submit" value="WRITE" name="submitbtn">
		<%} %>
		<%} %>
		<%} %>
	</form>
</body>
</html>