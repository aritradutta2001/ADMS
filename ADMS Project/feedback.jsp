<Html>  
    <head>   
    <title> Feedback </title>  
    </head>  
    <body>  
    <center><h2><u>Feedback</u></h2></center>
    <%@ page import="p1.*"%>
    <%@ page import="java.sql.*"%>
   
    
    <%
            String sid = (String) session.getAttribute("username");
    %>
    <%
    Connection con=null;
    PreparedStatement ps=null;
    ResultSet rs=null;
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb","root","");
    %>
    <form action=" " method ="Post">  
                        
                        <%
                            ps=con.prepareStatement("select * from teacher_login");
                            rs=ps.executeQuery();
                        %>
                        <label>Teacher Name : </label>
                        <select name="teacher">
                            <%
                                while (rs.next()) 
                                {
                                    String t = rs.getString("tid");
                                    String t1 = rs.getString("fname");
                                    String t2 = rs.getString("lname");
                            %>
                                <option value="<%=t %>"><%=t1+" "+t2 %></option>   
                                <%
                                }
                                %>
                        </select>
    <br><br>
    <label> Rating : </label>
    <select name="ratings">
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
    </select>
    <br><br>
                    
    <label> Feedback Message : </label>         
    <textarea  rows="4" cols="50" name="t"></textarea> <br> <br>
    <input type="submit" name="submit" value="Submit"/>  
    </form> 
    
    <%
    
        String f1=request.getParameter("teacher");
        String f2=request.getParameter("ratings");
        String f3=request.getParameter("t");
        
        
                Feedback obj=new Feedback();
                try
                {
                    int i=obj.insertData(sid,f1,f2,f3);
                    if(i>0)
                    {
    
    %>  
                            <script>
                                alert("Your Feedback is Submitted Successfully");
                            </script>
    <%
                    }
                        
                }
                catch(Exception e)
                {
                    e.printStackTrace();
                }
    %>
    
    </body>  
    </html>  