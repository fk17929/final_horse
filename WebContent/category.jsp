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
<!-- frame2의 카테고리입니다. -->
<th width='120'><a href = "introduce.jsp" target = "title" class="no-uline">소개</a></th>
<th width="150"><a href = "batting.jsp" target = "title" class="no-uline">배팅하기</a></th>
<th width='150'><a href = "todaygame.jsp" target = "title" class="no-uline">금주의 경마</a></th>
<th width='150'><a href = "community.jsp" target = "title" class="no-uline">자유게시판</a></th>
<th width='150'><a href = "mypage.jsp" target = "title" class="no-uline">회원정보</a></th>
<Th width='200'>
	<%
	//이친구는 로그인, 로그아웃입니다.
		String checkName = (String)session.getAttribute("userid");
		if(checkName == null)
		{
			out.println("<a href = \"login.jsp\" target = \"content\">로그인</a>");
			
		}
		else
		{
			out.println("아이디 : "+session.getAttribute("userid"));
			out.println("<a href = \"logout.jsp\" target = \"content\">로그아웃</a>");
		}
	%>
</Th>
<th width='150'><a href = "member.jsp" target = "content" class="no-uline">회원가입하기</a></th>
</tr>
</table>


</body>
</html>