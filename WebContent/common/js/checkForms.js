/********************************************************************
*  writeby           :
*  Function Name	 : jsLogin_check()
*  Description		 : �α��� ���̵� �н����� �Է� üũ
*  Input Data        : userid, userpw		
*  Output Data		 : ���� �޽��� 
*  UsedInJSP		 : login.jsp
/********************************************************************/

function jsLogin_check() 
{  
	  if (document.docform.userid.value == "")
	  {
		  alert("ID�� �Է��ϼ���");
		  document.docform.userid.focus();
		  return ;
	  } 
	  
	  if (document.docform.userpw.value == "")
	  {
		  alert("PW�� �Է��ϼ���");
		  document.docform.userpw.focus();
		  return ;
	  }
	  
	  document.docform.submit();
}
/********************************************************************
*  writeby           :
*  Function Name	 : jsLogin_check()
*  Description		 : �α��� ���̵� �н����� �Է� üũ
*  Input Data        : userid, userpw		
*  Output Data		 : ���� �޽��� 
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