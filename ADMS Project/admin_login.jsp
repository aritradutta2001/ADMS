<html>
<head>
<title>
Login</title>
</head>
<body>
<%@ page import="p1.*"%>
<%
			String user=request.getParameter("au");
			String pass=request.getParameter("ap");
			

		
			if(user.equals("")||pass.equals(""))
			{
%>
<jsp:include page = "admin_login.html"/>
<script>
alert("Field can't be Blank ");
</script>
<%
				return;
			}
			AdminDb obj=new AdminDb();
			try
			{
				boolean b=obj.checkLoginAdmin(user,pass);
				if(b)
				{
					session = request.getSession();
					session.setAttribute("username",user);
					response.sendRedirect("admin_db.jsp");
				}
				else
				{
%>
<jsp:include page = "admin_login.html"/>
<script>
alert("Wrong User_id or Password ");
</script>
<%
				}
      		}
			catch(Exception e)
			{
%>
<jsp:include page = "admin_login.html"/>
<%
 out.println("<center>"+e);
}
%>
</body>
</html>