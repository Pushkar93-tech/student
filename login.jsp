<html>
<head>
<link rel="stylesheet" href="abc.css"/>
</head>
<body>
<div id="mymenu">
<ul>
<li>HOME</li>
<li><a href="regis.jsp">REGISTRATION</a></li>
<li><a href="menu.jsp">MENU</a></li>
<li>ABOUT</li>
<li>CONTACT</li>
</ul>
</div>

<div>
<center>
<form action="Login1.jsp">
     <%
    String s2=request.getParameter("s1");
    if(s2!=null)
    {
        %>
        <%=s2%>
<% }%>
<table cellpadding="18px">
<tr>
<td>ENTER NAME</td>
<td><input type="text" name="un" class="A" placeholder="enter name"></td>
</tr>
<tr>
<td>ENTER pass</td>
<td><input type="text" name="up" class="A" placeholder="Enter pass"></td>
</tr>
<tr>
<th colspan="2" ><input type="submit" class="B" value="login"></th>
</tr>
</table>
</form>
</center>
</div>
</body>
</html>