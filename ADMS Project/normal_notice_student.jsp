<!DOCTYPE html>

<html lang="en" dir="ltr">
  <head>
 <title>Normal Notice</title>
    <meta charset="UTF-8">

    <link rel="stylesheet" href="CSS/style.css">
    <link rel="stylesheet" href="CSS/tablestyle.css">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script src="JS/disable.js"></script> 
   </head>
<body>
    <center><h2><u><b>Notice</b></u></h2></center>
<br><br>
<%@ page import="p1.*"%>
<%@ page import="java.sql.*"%>
<%
			String sid = (String) session.getAttribute("username");
%>
<center><table weight="100%" border='1' >
    <tr>
      <th>Notice_Title</th>
      <th>Semester</th>
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
    ps=con.prepareStatement("SELECT DISTINCT normal_notice_admin.session,normal_notice_admin.semester,normal_notice_admin.title,normal_notice_admin.notice_pdf,student_details.sid,student_details.sem,student_details.session FROM `normal_notice_admin` inner join student_details on normal_notice_admin.semester = student_details.sem and normal_notice_admin.session=student_details.session ");
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
        <td><%=rs.getString("semester")%></td>
        <td><a href="files/<%=rs.getString(4) %>" width = 150> <%=rs.getString(4) %></a></td>
            
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