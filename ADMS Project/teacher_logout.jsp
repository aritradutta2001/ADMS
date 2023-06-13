<html>
<head>
<title>Home</title>
</head>
<body>

<%
			session = request.getSession(false);
			if(session==null)
			{
				response.sendRedirect("teacher_login.html");
			}
			else
			{
				session.invalidate();
				response.sendRedirect("teacher_login.html");
			}
		

%>				
</body>
</html>