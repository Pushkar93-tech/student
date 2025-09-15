<%@page import="java.sql.*"%>
<%
String s1=request.getParameter("n1");
String s2=request.getParameter("n2");
String s3=request.getParameter("n3");
String s4=request.getParameter("n4");
String s5=request.getParameter("n5");
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql:///abhidb?useSSL=false","root","root");
Statement st=con.createStatement();
int x=st.executeUpdate("update insmarks set UNAME='"+s2+"',PHYS='"+s3+"',CHEM='"+s4+"',MATHS='"+s5+"' where URNO='"+s1+"'");
if(x!=0)
{
response.sendRedirect("ShowAll.jsp");
}
else
{
out.println("data not updated....");
}
con.close();
}
catch(Exception e)
{
out.println(e);
}
%>
