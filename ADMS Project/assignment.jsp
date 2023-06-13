<Html>  
<head>   
<title> Assignments </title>  
</head>  
<body>  
<center><h2><u>Assignments</u></h2></center>
<%@ page import="p1.*"%>
<%@ page import="java.sql.*"%>

<%
		String tid = (String) session.getAttribute("username");
%>
<%
Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb","root","");
%>
<form action="assignment.jsp" method ="Post">  
                    
                    <%
                        ps=con.prepareStatement("select distinct session from student_details");
                        rs=ps.executeQuery();
                    %>
                    <label>Session : </label>
                    <select name="select_session">
                        <%
                            while (rs.next()) 
                            {
                                String sess = rs.getString("session");
                        %>
                            <option value="<%=sess %>"><%=sess %></option>   
                            <%
                            }
                            %>
                    </select>
					<br><br>
                    <%
                        ps=con.prepareStatement("select * from sem");
                        rs=ps.executeQuery();
                    %>
                    <label>Semester : </label>
                    <select name="select_semester">
                        <%
                            while (rs.next()) 
                            {
                                String sem = rs.getString("sem_id");
                                String sem1 = rs.getString("sem_name");
                        %>
                            <option value="<%=sem %>"><%=sem1 %></option>   
                            <%
                            }
                            %>
                    </select>
                    <br><br>
                    <%
                    try
                    {       String sql="select * from Subjects where allotedto="+"'"+tid+"'";
                            ps=con.prepareStatement(sql);
                            rs=ps.executeQuery();
                    }
                    catch(Exception e)
                    {
                        out.println(e);
                    }
                    %>
                    <label>Subjects : </label>
                    <select name="sub">
                        <%
                            while (rs.next()) 
                            {
                                String sem = rs.getString("subject_code");
                                String sem1 = rs.getString("subject_name");
                        %>
                            <option value="<%=sem %>"><%=sem1 %></option>   
                            <%
                            }
                            %>
                    </select>
<br><br>
<label> Assignment Title : </label>         
<textarea  rows="4" cols="50" name="t"></textarea> <br> <br>
<label> Upload Docs : </label>         
<input type="file" name="u"  accept=".pdf" value=""> <br> <br> 
<label> Deadline : </label>         
<input type="datetime-local" name="d" > <br> <br> 
<input type="submit" name="submit" value="Submit"/>  
</form> 

<%

    String f1=request.getParameter("select_session");
    String f2=request.getParameter("select_semester");
    String f3=request.getParameter("sub");
    String f4=request.getParameter("t");
    String f5=request.getParameter("u");
    String f6=request.getParameter("d");

    
  
			Assignment obj=new Assignment();
			try
			{
                String sql="select semester from subjects where subject_code="+"'"+f3+"'";
                ps=con.prepareStatement(sql);
                rs=ps.executeQuery();
                while(rs.next())
                {
                    if(f2.equals(rs.getString("semester")))
                    {
				        int i=obj.insertData(tid,f1,f2,f3,f4,f5,f6);
				        if(i>0)
				        {
                        
%>  
                            <script>
                                    alert("Successfull");
                            </script>
<%  
                        }

                    }
                    else
                    {
%>
                        <script>
                        alert("Please Enter Subjects According to Semesters");
                        </script>
<%
                        break;
                    }
                }
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
%>

</body>  
</html>  