<!DOCTYPE html>

<html lang="en" dir="ltr">
  <head>
 <title>My Profile</title>
    <meta charset="UTF-8">

    <link rel="stylesheet" href="CSS/style.css">
    <link rel="stylesheet" href="CSS/tablestyle.css">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script src="JS/disable.js"></script> 
   </head>
<body>
    <center><h2><u><b>My Profile</b></u></h2></center>
<br><br>
<%@ page import="p1.*"%>
<%@ page import="java.sql.*"%>
<%
			String sid = (String) session.getAttribute("username");
%>
<center><table weight="100%" border='1' >
    <tr>
      <th>Sid</th>
      <th>First Name</th>
      <th>Last Name</th>
      <th>Gender</th>
      <th>Ph No</th>
      <th>Email</th>
      <th>Address</th>
      <th>Dob</th>
      <th>Semester</th>
      <th>Session</th>
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
    ps=con.prepareStatement("SELECT * from student_login inner join student_details on student_login.sid=student_details.sid ");
    rs=ps.executeQuery();
    while(rs.next())
    {
%>
<%
if(sid.equals(rs.getString("sid")))
    {
%>

    <tr>
        <td><%=rs.getString("sid")%></td>
        <td><%=rs.getString("fname")%></td>
        <td><%=rs.getString("lname")%></td>
        <td><%=rs.getString("gen")%></td>
        <td><%=rs.getString("phone_no")%></td>
        <td><%=rs.getString("email")%></td>
        <td><%=rs.getString("add")%></td>
        <td><%=rs.getString("dob")%></td>
        <td><%=rs.getString("sem")%></td>
        <td><%=rs.getString("session")%></td>
            
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