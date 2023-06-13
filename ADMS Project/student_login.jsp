<html>
<head>
<title>
Login</title>
</head>
<body>
<%@ page import="p1.*"%>
<%
			String user=request.getParameter("su");
			String pass=request.getParameter("sp");
		
			if(user.equals("")||pass.equals(""))
			{
%>
<jsp:include page = "student_login.html"/>
<script>
alert("Field can't be Blank ");
</script>
<%
				return;
			}
			MyDb obj=new MyDb();
			try
			{
				boolean b=obj.checkLogin(user,pass);
				if(b)
				{
					session = request.getSession();
					session.setAttribute("username",user);
					response.sendRedirect("student_db.jsp");
				}
				else
				{
%>
<jsp:include page = "student_login.html"/>
<script>
alert("Wrong User_id or Password ");
</script>
<%
				}
      		}
			catch(Exception e)
			{
%>
<jsp:include page = "student_login.html"/>
<%
 out.println("<center>"+e);
}
%>
</body>
</html>