<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" session = "true"%>
<html><head> <title>회원가입</title> </head>
<body>
<!-- 회원가입을 위한 양식입니다. -->
<h1> JOIN PAGE </h1>
<form action="member_ok.jsp" method="post" name="regitform">
<table>
<tr>
<td> ID : </td>
<td> <input type="text" name="uid"><td/>
</tr>
<tr>
<td> Name : </td>
<td> <input type="text" name="uname"></td>
</tr>
<tr>
<td> Password : </td>
<td> <input type="password" name="upw"></td>
</tr>
</table>
<input type="submit" value="가입" name="submitbtn">
<input type="reset" value="취소" name="resetbtn">
</form>
</body>
</html>