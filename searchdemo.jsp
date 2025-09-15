<%@page import="java.sql.*"%>
<%
String s33=request.getParameter("b2");
if(s33!=null)
{
    String s1=request.getParameter("n1");
    String s2=request.getParameter("n2");
    String s3=request.getParameter("n3");
    String s4=request.getParameter("n4");
    String s5=request.getParameter("n5");   
try
{
   Class.forName("com.mysql.cj.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql:///abhidb?useSSL=false","root","root");
   Statement st=con.createStatement();
   int x=st.executeUpdate("update insmarks set UNAME='"+s2+"',PHY='"+s3+"',CHE='"+s4+"',MATHS='"+s5+"' where URNO='"+s1+"'");
   if(x!=0)
   {
     response.sendRedirect("ShowAll.jsp"); 
   }
   else
   {
    out.println("data not update..");   
   }
  con.close();
}
catch(Exception e)
{
 out.println(e);   
}
}
%>
<html>
<head>
<link rel="stylesheet" href="abc.css"/>
</head>
<body>
    <%@include file="menu.jsp"%>
<center>
<form  action="searchdemo.jsp" >
    <table cellpadding="25px">
<tr>
<td>ENTER RNO.</td>
<td><input type="text" name="u1" class="A" placeholder="Enter RNO"></td>
</tr>
<tr>
<th colspan="2"><input type="submit" name="b1" class="B" value="SEARCH"></th>
</tr>
</table>
</form>
<%
String s21=request.getParameter("b1");
if(s21!=null)
{
 String s2=request.getParameter("u1");
try
{
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql:///abhidb?useSSL=false","root","root");
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from insmarks where URNO='"+s2+"' ");
    if(rs.next())
    {%>
    <center>
        <form action="searchdemo.jsp">
          <table cellpadding="25px">
          <tr>
              <td> RNO</td> 
              <td><input type="text" class="A" name="n1" value="<%=rs.getString(1)%>"></td>
           </tr>
            <tr>
              <td> NAME</td> 
              <td><input type="text" name="n2" class="A" value="<%=rs.getString(2)%>"></td>
           </tr>
            <tr>
              <td> CHE</td> 
              <td><input type="text" name="n3" class="A" value="<%=rs.getString(3)%>"></td>
           </tr>
            <tr>
              <td> PHY </td> 
              <td><input type="text" name="n4" class="A" value="<%=rs.getString(4)%>"></td>
           </tr>
            <tr>
              <td> MATHS</td> 
              <td><input type="text" name="n5" class="A" value="<%=rs.getString(5)%>"></td>
           </tr>
           <tr>
           <th colspan="2"> <input  type="submit" name="b2" class="B"  value="update">   
           </tr>
          </table>
        </form>
           </center>
    <%}
else
{
out.println("invalid RNO....");
}
con.close();
}
catch(Exception e)
{
out.println(e);
}
}
%>
</center>
</div>
</body>
</html>