<html>
<head>
<title>
Login</title>
</head>
<body>
<%@ page import="p1.*"%>
<%
			String user=request.getParameter("tu");
			String pass=request.getParameter("tp");
			

		
			if(user.equals("")||pass.equals(""))
			{
%>
<jsp:include page = "teacher_login.html"/>
<script>
alert("Field can't be Blank ");
</script>
<%
				return;
			}
			TeacherDb obj=new TeacherDb();
			try
			{
				boolean b=obj.checkLoginTeacher(user,pass);
				if(b)
				{
					session = request.getSession();
					session.setAttribute("username",user);
					response.sendRedirect("teacher_db.jsp");
				}
				else
				{
%>
<jsp:include page = "teacher_login.html"/>
<script>
alert("Wrong User_id or Password ");
</script>
<%
				}
      		}
			catch(Exception e)
			{
%>
<jsp:include page = "teacher_login.html"/>
<%
 out.println("<center>"+e);
}
%>
</body>
</html>