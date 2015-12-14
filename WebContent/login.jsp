<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ include file="./common/jsp/head.jsp"%>
<script src="./common/js/checkForms.js" type="Text/JavaScript"></script>
<link rel="stylesheet" type="text/css" href="./common/css/webboard.css" />
</head>
<body>
	<div class="center">
		<table class="loginTable">
			<tr>
				<td class="loginTableTd" background="./common/image/aroundbox.png">
					<form name="docform" action="login_ok.jsp" method="post">
						<div align="center">
							<table>
								<tr>
									<td><img src="./common/image/userid.png"></td>
									<td><input type="text" name="userid" class="loginInput"></td>
									<td rowspan="2"><img src="./common/image/login.png"
										onClick="javascript:jsLogin_check()" style="cursor: hand"></td>
								</tr>
								<tr>
									<td><img src="./common/image/password.png"></td>
									<td><input type="password" name="userpw"
										class="loginInput"></td>
								</tr>
							</table>
						</div>
					</form>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>