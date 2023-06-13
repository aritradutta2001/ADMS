<html>
<head>
<title>
Change Password</title>
</head>
<body>
<%@ page import="p1.*"%>
<%
			String oldPass=request.getParameter("op");
			String newPass=request.getParameter("np");
			String confirmPass=request.getParameter("cp");
		
			if(oldPass.equals("")||newPass.equals("")||confirmPass.equals(""))
			{
%>
<jsp:include page = "changeadminpass.html"/>
<script>
alert("Field can't be Blank ");
</script>
<%
				return;
			}
			AdminDb obj=new AdminDb();
			String uid=(String) session.getAttribute("username");
			try
			{
				String oldPass1=obj.getAdminOldPassword(uid);
				
				if(oldPass.equals(oldPass1))
				{
					if(newPass.equals(confirmPass))
					{
						int i =obj.changePasswordAdmin(oldPass,newPass);
						if(i>0)
						{	
%>
							<jsp:include page = "changeadminpass.html"/>
							<script>
							alert("Sucessfully Updated");
							</script>
<%	
							response.sendRedirect("admin_db.jsp");
			
						}
					}
					else
					{
%>
						<jsp:include page = "changeadminpass.html"/>
						<script>
						alert("New and Confirm Password doesn't Match ");
						</script>
<%
					}
      			}
				else
				{
%>
						<jsp:include page = "changeadminpass.html"/>
						<script>
						alert("Old Password is Wrong");
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