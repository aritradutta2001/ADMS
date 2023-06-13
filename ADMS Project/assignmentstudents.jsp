<!DOCTYPE html>

<html lang="en" dir="ltr">
  <head>
 <title>Assignments</title>
    <meta charset="UTF-8">

    <link rel="stylesheet" href="CSS/style.css">
    <link rel="stylesheet" href="CSS/tablestyle.css">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script src="JS/disable.js"></script> 
   </head>
<body>
<center><h2><u><b>Assignments</b></u></h2></center>
<br><br> 
<%@ page import="p1.*"%>
<%@ page import="java.sql.*"%>
<%
			String sid = (String) session.getAttribute("username");
%>
<center><table weight="100%" border='1' >
    <tr>
      <th>Assignments</th>
      <th>Teacher Name</th>
      <th>Semester</th>
      <th>Subjects</th>
      <th>Docs</th>
      <th>Deadlines</th>
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
    ps=con.prepareStatement("SELECT DISTINCT assignments.sessions,assignments.semester,assignments.title,assignments.docs_pdf,assignments.deadline,subjects.subject_name,student_details.sid,student_details.sem,student_details.session,teacher_login.fname,teacher_login.lname FROM `assignments` inner join student_details inner join subjects inner join teacher_login on assignments.semester = student_details.sem and assignments.sessions=student_details.session and assignments.sub=subjects.subject_code and assignments.tid=teacher_login.tid");
    
    rs=ps.executeQuery();
    while(rs.next())
    {
%>
<%
    if(sid.equals(rs.getString("sid")))
    {
%>
    <tr>
        <td><%=rs.getString("title")%></td>
        <td><%=rs.getString("fname")%> <%=rs.getString("lname")%></td>
        <td><%=rs.getString("sem")%></td>
        <td><%=rs.getString("subject_name")%></td>
        <td><a href="assignments/<%=rs.getString(4) %>" width = 150> <%=rs.getString(4) %></a></td>
        <td><%=rs.getString("deadline")%></td>
            
    </tr>
<%
    }
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