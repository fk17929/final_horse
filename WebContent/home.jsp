<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" session = "true"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Home</title><!-- 전체 페이지 홈으로, 네개로 프레임을 나누어 카테고리에는 대제목이 있고 title 에 그에맞는 소제목이 있습니다 content에는 그 내용이 있습니다. -->
</head>


<frameset rows = "10%,*" cols="200,*">
	<frame src ="logo.jsp" name = "logo">
	<frame src = "category.jsp" name = "category">
	
	
	
	<frame src = "title.jsp" name = "title">
	<frame src = "content.jsp" name = "content">
</frameset>


<body>
</body>
</html>