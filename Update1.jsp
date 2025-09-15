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
    <form action='Update2.jsp'>
    <table cellpadding="12">
     <tr>
     <td> RNO </td>
     <td> <input type="text" name="n1" value="<%=rs.getString(1)%>"> </td>
     </tr>
     <tr>
     <td> NAME </td>
     <td> <input type="text" name="n2" value="<%=rs.getString(2)%>"> </td>
     </tr>
     <tr>
     <td> PHY </td>
     <td> <input type="text" name="n3" value="<%=rs.getString(3)%>"> </td>
     </tr>
     <tr>
     <td> CHEM </td>
     <td> <input type="text" name="n4" value="<%=rs.getString(4)%>"> </td>
     </tr>
     <tr>
     <td> MATHS </td>
     <td> <input type="text" name="n5" value="<%=rs.getString(5)%>"> </td>
     </tr>
     <tr>
      <th colspan="2"> <input type="submit" value="update" class="B"> </th>
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