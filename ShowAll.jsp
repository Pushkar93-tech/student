<%@page import="java.sql.*"%>
<html>
<head>
<link rel="stylesheet" href="abc.css"/>
</head>
<body>
<%@include file="menu.jsp" %> 
<div>
<center> 
 <table cellpadding="20px">
  <%
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql:///abhidb?useSSL=false","root","root");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from insmarks");
%>
<tr>
<th> URNO </th>
<th> UNAME </th>
<th> UPHY </th>
<th> UCHEM </th>
<th> UMATHS </th>
</tr>
<%
while(rs.next())
{
  %>
<tr>
    <td><%=rs.getString(1)%></td>
     <td><%=rs.getString(2)%></td>
     <td><%=rs.getString(3)%></td>
     <td><%=rs.getString(4)%></td>
     <td><%=rs.getString(5)%></td>
</tr>
<%
}
con.close();
}
catch(Exception e)
{
out.println(e);
}
%>
 </table>
 </center>
 </div>
</body>
</html>