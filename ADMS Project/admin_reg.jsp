<html>
<head>
<title>
Registration</title>
</head>
<body>
<%@ page import="p1.*"%>
<%
			String user=request.getParameter("u");
			String pass=request.getParameter("p");
			String fName=request.getParameter("f");
			String lName=request.getParameter("l");

			if(user.equals("")||pass.equals("")||fName.equals("")||lName.equals(""))
			{
				out.println("Filed Can't be Blank");
				return;
			}
			MyDb obj=new MyDb();
			try
			{
				int i=obj.insertDataAdmin(user,pass,fName,lName);
				if(i>0)
				{
					response.sendRedirect("index.html");
				}
      		}
			catch(Exception e)
			{
%>
<jsp:include page = "reg.html"/>
<%
 out.println("<center>"+e);
}
%>
</body>
</html>