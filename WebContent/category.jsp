<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" session = "true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
a.no-uline { text-decoration:none }
</style>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<br>
<table border = "0">
<tr>
<!-- frame2�� ī�װ��Դϴ�. -->
<th width='120'><a href = "introduce.jsp" target = "title" class="no-uline">�Ұ�</a></th>
<th width="150"><a href = "batting.jsp" target = "title" class="no-uline">�����ϱ�</a></th>
<th width='150'><a href = "todaygame.jsp" target = "title" class="no-uline">������ �渶</a></th>
<th width='150'><a href = "community.jsp" target = "title" class="no-uline">�����Խ���</a></th>
<th width='150'><a href = "mypage.jsp" target = "title" class="no-uline">ȸ������</a></th>
<Th width='200'>
	<%
	//��ģ���� �α���, �α׾ƿ��Դϴ�.
		String checkName = (String)session.getAttribute("userid");
		if(checkName == null)
		{
			out.println("<a href = \"login.jsp\" target = \"content\">�α���</a>");
			
		}
		else
		{
			out.println("���̵� : "+session.getAttribute("userid"));
			out.println("<a href = \"logout.jsp\" target = \"content\">�α׾ƿ�</a>");
		}
	%>
</Th>
<th width='150'><a href = "member.jsp" target = "content" class="no-uline">ȸ�������ϱ�</a></th>
</tr>
</table>


</body>
</html>