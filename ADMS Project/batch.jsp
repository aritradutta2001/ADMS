<Html>  
    <head>   
    <title> Batch Create </title>  
    </head>  
    <body>  
        <%@ page import="p1.*"%>
        <%@ page import="java.sql.*"%>
        
        <%
		String sid = (String) session.getAttribute("username");
        %>
        <%
        String s=request.getParameter("sid");
        String pass=request.getParameter("p");
        String repass=request.getParameter("rp");
        String fn=request.getParameter("fn");
        String ln=request.getParameter("ln");
        String gen=request.getParameter("gen");
        String ph=request.getParameter("ph");
        String email=request.getParameter("email");
        String add=request.getParameter("add");
        String dob=request.getParameter("d");
        String sem=request.getParameter("select_semester");
        String m1=request.getParameter("m1");
        String m2=request.getParameter("m2");
        String m3=request.getParameter("m3");
        String acard=request.getParameter("ac");
        String sess=request.getParameter("ss");
        String image=request.getParameter("im");

        Batch obj=new Batch();
        if(pass.equals(repass))
        {
			try
			{
				int i=obj.insertData(s,pass,fn,ln);
                int i1=obj.insertData1(s,gen,ph,email,add,dob,sem,m1,m2,m3,acard,sess,image);
				if(i>0  && i1>0)
				{
        %>
                    <script>
                        alert("Successfull");
                    </script>
        <%
                }
            }
            
            catch(Exception e)
            {
        %>
        <jsp:include page = "batchstu.jsp"/>
        <%
                out.println(e);
            }

        }
        else
        {
        %>  
        <jsp:include page = "batchstu.jsp"/>
            <script>alert("Password and Confirm Password not match");
            </script>
        <%
        }
        %>
        </body>
    </head>
    </Html>