<!DOCTYPE html>

<html lang="en" dir="ltr">
  <head>
 <title>Lession Plan</title>
    <meta charset="UTF-8">

    <link rel="stylesheet" href="CSS/style.css">
    <link rel="stylesheet" href="CSS/tablestyle.css">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script src="JS/disable.js"></script> 
   </head>
<body>
<center><h2><u><b>Lession Plan</b></u></h2></center>
<br><br> 
<%@ page import="p1.*"%>
<%@ page import="java.sql.*"%>
<%
			String aid = (String) session.getAttribute("username");
%>
<center><table weight="100%" border='1' >
    <tr>
      <th>Teacher Name</th>
      <th>Session</th>
      <th>Semester</th>
      <th>Subjects</th>
      <th>Title</th>
      <th>Lession_pdf</th>
    </tr>
<%
Connection con=null;
ResultSet rs=null;
PreparedStatement ps=null;
%>
<%
try
{
    Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb","root","");
    ps=con.prepareStatement("SELECT * FROM `lession_plan` inner join teacher_login inner join subjects on lession_plan.tid=teacher_login.tid and lession_plan.subject=subjects.subject_code");
    
    rs=ps.executeQuery();
    while(rs.next())
    {
%>

    <tr>
        <td><%=rs.getString("fname")%> <%=rs.getString("lname")%></td>
        <td><%=rs.getString("session")%></td>
        <td><%=rs.getString("semester")%></td>
        <td><%=rs.getString("subject_name")%></td>
        <td><%=rs.getString("title")%></td>
        <td><a href="lession_plan/<%=rs.getString(6) %>" width = 150> <%=rs.getString(6) %></a></td>
            
    </tr>
<%
    }
    con.close();
}
catch(Exception e)
{
    e.printStackTrace();
}
%>
</table>
</center>