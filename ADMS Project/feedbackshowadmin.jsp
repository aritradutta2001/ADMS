<!DOCTYPE html>

<html lang="en" dir="ltr">
  <head>
 <title>Feedback</title>
    <meta charset="UTF-8">

    <link rel="stylesheet" href="CSS/style.css">
    <link rel="stylesheet" href="CSS/tablestyle.css">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script src="JS/disable.js"></script> 
   </head>
<body>
<center><h2><u><b>Feedback</b></u></h2></center>
<br><br> 
<%@ page import="p1.*"%>
<%@ page import="java.sql.*"%>
<%
			String aid = (String) session.getAttribute("username");
%>
<center><table weight="100%" border='1' >
    <tr>
      <th>Student Name</th>
      <th>Batch</th>
      <th>Semester</th>
      <th>Teacher Name</th>
      <th>Ratings</th>
      <th>Feedback</th>
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
    ps=con.prepareStatement("SELECT * FROM feedback inner join student_login inner join student_details inner join teacher_login on feedback.sid=student_details.sid and feedback.sid=student_login.sid and feedback.teacher=teacher_login.tid");
    
    rs=ps.executeQuery();
    while(rs.next())
    {
        
%>
    <tr>
        <td><%=rs.getString("student_login.fname")%> <%=rs.getString("student_login.lname")%></td>
        <td><%=rs.getString("session")%></td>
        <td><%=rs.getString("sem")%></td>
        <td><%=rs.getString("teacher_login.fname")%> <%=rs.getString("teacher_login.lname")%></td>
        <td><%=rs.getString("ratings")%></td>
        <td><%=rs.getString("title")%></td>
            
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