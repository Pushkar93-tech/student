<%@page import="java.sql.*"%>
<html>
<head>
<link rel="stylesheet" href="abc.css"/>
</head>
<body>
<%@include file="menu.jsp" %> 
<%
String s1=request.getParameter("u1");
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql:///abhidb?useSSL=false","root","root");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from insmarks where URNO='"+s1+"'");
if(rs.next())
{%>
<center>
    <table cellpadding="12">
     <tr>
     <td> RNO </td>
     <td><%=rs.getString(1)%> </td>
     </tr>
     <tr>
     <td> NAME </td>
     <td> <%=rs.getString(2)%></td>
     </tr>
     <tr>
     <td> PHY </td>
     <td><%=rs.getString(3)%> </td>
     </tr>
     <tr>
     <td> CHEM </td>
     <td> <%=rs.getString(4)%> </td>
     </tr>
     <tr>
     <td> MATHS </td>
     <td> <%=rs.getString(5)%></td>
     </tr>
    </table>
     </Center>
     <% 
     }
else
{
out.println("<h1><font color='white' size='7'>INVALID RNO.</font></h1>");
}
con.close();
}
catch(Exception e)
{
out.println(e);
}
%>
</body>
</html>