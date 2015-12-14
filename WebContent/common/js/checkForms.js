/********************************************************************
*  writeby           :
*  Function Name	 : jsLogin_check()
*  Description		 : 로그인 아이디 패스워드 입력 체크
*  Input Data        : userid, userpw		
*  Output Data		 : 에러 메시지 
*  UsedInJSP		 : login.jsp
/********************************************************************/

function jsLogin_check() 
{  
	  if (document.docform.userid.value == "")
	  {
		  alert("ID를 입력하세요");
		  document.docform.userid.focus();
		  return ;
	  } 
	  
	  if (document.docform.userpw.value == "")
	  {
		  alert("PW를 입력하세요");
		  document.docform.userpw.focus();
		  return ;
	  }
	  
	  document.docform.submit();
}
/********************************************************************
*  writeby           :
*  Function Name	 : jsLogin_check()
*  Description		 : 로그인 아이디 패스워드 입력 체크
*  Input Data        : userid, userpw		
*  Output Data		 : 에러 메시지 
*  UsedInJsp		 : write.jsp 
/********************************************************************/

function goList()
{
	parent.location.replace("list.jsp");
}

function goEdit(idx)
{
	parent.location.replace("write.jsp?idx="+idx +"&mode=E");
}

function goDelete(idx)
{
	parent.location.replace("write.jsp?idx="+idx +"&mode=D");
}