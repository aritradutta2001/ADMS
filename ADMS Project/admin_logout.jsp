<html>
<head>
<title>Home</title>
</head>
<body>

<%
			session = request.getSession(false);
			if(session==null)
			{
				response.sendRedirect("admin_login.html");
			}
			else
			{
				session.invalidate();
				response.sendRedirect("admin_login.html");
			}
		

%>				
</body>
</html>