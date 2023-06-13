<!DOCTYPE html>

<html lang="en" dir="ltr">
  <head>
 <title>Notes</title>
    <meta charset="UTF-8">

    <link rel="stylesheet" href="CSS/style.css">
    <link rel="stylesheet" href="CSS/tablestyle.css">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script src="JS/disable.js"></script> 
   </head>
<body>
<center><h2><u><b>Notes</b></u></h2></center>
<br><br> 
<%@ page import="p1.*"%>
<%@ page import="java.sql.*"%>
<%
			String sid = (String) session.getAttribute("username");
%>
<center><table weight="100%" border='1' >
    <tr>
      <th>Notes</th>
      <th>Teacher Name</th>
      <th>Semester</th>
      <th>Subjects</th>
      <th>Docs</th>

      
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
    ps=con.prepareStatement("SELECT DISTINCT note_upload.session,note_upload.semester,note_upload.title,note_upload.notes_pdf,subjects.subject_name,student_details.sid,student_details.sem,student_details.session,teacher_login.fname,teacher_login.lname FROM `note_upload` inner join student_details inner join subjects inner join teacher_login on note_upload.semester = student_details.sem and note_upload.session=student_details.session and note_upload.subject=subjects.subject_code and note_upload.tid=teacher_login.tid");
    
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
        <td><%=rs.getString("semester")%></td>
        <td><%=rs.getString("subject_name")%></td>
        <td><a href="notes/<%=rs.getString(4) %>" width = 150> <%=rs.getString(4) %></a></td>
            
    </tr>
<%
    }
}
con.close();
}
catch(Exception e)
{
    out.println(e);
}
%>
</table>
</center>