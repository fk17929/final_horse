<%@ page import="java.io.Console"%>
<%@ page contentType="text/html;charset=utf-8" import="java.lang.*, java.sql.*" session = "true"%>
	
<!-- 배팅하기를 누르면 나오는 배팅내역확인창입니다. -->
<%
	request.setCharacterEncoding("utf-8");
	String round = request.getParameter("round");
	String type = request.getParameter("type");
	String horse = request.getParameter("horse");
	String number = request.getParameter("number");
	Connection con = null;
	Statement stmt = null;
	String jdbc_driver = "com.mysql.jdbc.Driver";
	String jdbc_url = "jdbc:mysql://localhost:3306/webboard?useUnicode=true&characterEncoding=utf8";
	String id = (String)session.getAttribute("userid");
	
	try {
		Class.forName(jdbc_driver);

		con = DriverManager.getConnection(jdbc_url, "root", "1234");
		String sql = "INSERT INTO batting(round,type, horse, number, u_id) VALUES ('" + round
				+ "','" + type+ "','" + horse + "','" + number + "','"+id+"')";
		stmt = con.createStatement();

		stmt.executeUpdate(sql);

		stmt.close();
	} catch (Exception e) {
		out.println(e);
		return;
	}
%>
<HTML>
<HEAD>
</HEAD>
<BODY>
	<h2>저장 결과</h2>
	<P>
		<%
		 	
			try {
				String sql = "SELECT round, type, horse, number FROM batting where u_id='"+id+"'";

				stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
%><table border = "1" cellspacing = "0">
<tr>
<th>라운드</th>
<th>TYPE</th>
<th>마명</th>
<th>배팅액</th>
<%
				while (rs.next()) {
					%>
					<tr>
					<td><%=rs.getString("round")%></td>
					<td><%=rs.getString("type")%></td>
					<td><%=rs.getString("horse")%></td>
					<td><%=rs.getString("number")%></td>
					</tr>
					<%
				}
%></table><%
				rs.close();
				stmt.close();
				con.close();
			} catch (Exception e) {
				out.println(e);
				return;
			}
	%>
	
</BODY>
</HTML>



<!-- 배팅한 결과를 db에 추가합니다. -->
<%
//마별 배팅률, 마별 배팅횟수, 배팅총액, 배팅총횟수를 단승식, 연승식으로 나누어 저장합니디.
float singleRate[]=new float[10];
int singleHits[]=new int[10];
int singleMoney=0; 
int singleHitSum=0;

float doubleRate[]=new float[10];
int doubleHits[]=new int[10];
int doubleMoney=0;
int doubleHitSum=0;


for(int i=0 ; i<10; i++){
	singleRate[i]=0.0f;
	singleHits[i]=0;
	doubleRate[i]=0.0f;
	doubleHits[i]=0;
}


try{
	
	con = DriverManager.getConnection(jdbc_url, "root", "1234");
	stmt = con.createStatement();

		String sql = "select * from batting where round = '2round'";
		ResultSet rs = stmt.executeQuery(sql);
		while(rs.next()){
			round=rs.getString("round");

			
				int index =Integer.parseInt(rs.getString("horse"));
				int money =Integer.parseInt(rs.getString("number"));
				singleHits[index-1]++;
				singleMoney+=money;
				

		}
	
		for(int i=0; i<10; i++)
		{
			singleHitSum += singleHits[i];
		}
		
		//배팅률을 구합니다.
		for(int i=0; i<10; i++){
			
			if(singleHits[i]==0)
				continue;
			singleRate[i]=(singleHits[i]/(float)singleHitSum)*100;	
		}
		
		for(int i=0; i<10;i++){
			sql= "update roundhorse set single='"+String.valueOf(singleRate[i])+"' where round='2' and rain='"+(i+1)+"'";
			stmt.executeUpdate(sql);
		}


}
catch(Exception e){
	out.println(e.getMessage());
	e.printStackTrace();

}




%>

