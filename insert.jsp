<html>
<head>
<link rel="stylesheet" href="abc.css"/>
</head>
<body>
    <%@include file="menu.jsp"%>
<center>
<form action="Insert1.jsp">
    <%
    String s2=request.getParameter("s1");
    if(s2!=null)
    {
        %>
        <%=s2%>
<% }%>
<table cellpadding="18px">
<tr>
<td>ENTER RNO</td>
<td><input type="text" name="u1" class="A" placeholder="enter rno"></td>
</tr>

<tr>
<td>ENTER NAME</td>
<td><input type="text" name="u2" class="A" placeholder="Enter pass"></td>
</tr>

<tr>
<td>ENTER CHEM</td>
<td><input type="text" name="u3" class="A" placeholder="Enter pass"></td>
</tr>

<tr>
<td>ENTER PHYS</td>
<td><input type="text" name="u4" class="A" placeholder="Enter pass"></td>
</tr>

<tr>
<td>ENTER MATHS</td>
<td><input type="text" name="u5" class="A" placeholder="Enter pass"></td>
</tr>

<tr>
<th colspan="2" ><input type="submit" class="B" value="insert"></th>
</tr>

</table>
</form>
</center>
</div>
</body>
</html>