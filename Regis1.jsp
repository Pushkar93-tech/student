<%@page import="java.sql.*" %>
<%
		String s1=request.getParameter("un");
		String s2=request.getParameter("up");
		String s3=request.getParameter("uc");
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql:///abhidb?useSSL=false","root","root");
			Statement st=con.createStatement();
			st.executeUpdate("insert into regis values('"+s1+"','"+s2+"','"+s3+"')");
			con.close();
			response.sendRedirect("login.jsp");
		}
		catch(Exception e)
		{
			out.println(e);
		}
  %>