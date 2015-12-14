<%@ page contentType="text/html;charset=utf-8"
	import="wb.procDB, wb.dbSchema, java.util.*" session = "true"%>
<%@ include file="./common/jsp/head.jsp"%>
<jsp:useBean id="dbBean" class="wb.procDB" scope="page" />
<%! Vector result; dbSchema list;%>
</head>
<body>
	<!-- 게시판 목록 파일입니다. -->
	<h1>LIST</h1>
	<table cellspacing=1 width=600 border=1>
		<tr>
			<td width=50><p align=center>No</p></td>
			<td width=100><p align=center>Writer</p></td>
			<td width=320><p align=center>Title</p></td>
			<td width=100><p align=center>Date</p></td>
			<td width=100><p align=center>Hits</p></td>
		</tr>
		<%
			result = dbBean.getList();
			if (result.isEmpty()) {
		%>
		등록된 글이 없습니다.
		<%
			} else {
				for (int i = 0; i < result.size(); i++) {
					list = (dbSchema) result.elementAt(i);
		%>
		<tr>
			<td><%=list.getDocIdx()%></td>
			<td><%=list.getUserId()%></td>
			<td><a href="write.jsp?idx=<%=list.getDocIdx()%>&mode=R"> <%=list.getDocTitle()%>
			</a></td>
			<td><%=list.getDocDate()%></td>
			<td><%=list.getDocHits()%></td>
		</tr>
		<%
			}
			}
		%>

	</table>
	<a href="write.jsp?mode=W"> WRITE </a>
</body>
</html>