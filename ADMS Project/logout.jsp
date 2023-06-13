<html>
<head>
<title>Home</title>
</head>
<body>

<%
			session = request.getSession(false);
			if(session==null)
			{
				response.sendRedirect("student_login.html");
			}
			else
			{
				session.invalidate();
				response.sendRedirect("student_login.html");
			}
		

%>				
</body>
</html>