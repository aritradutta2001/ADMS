<Html>  
<head>   
<title> Batch Create </title>  
</head>  
<body>  
<center><h2><u>Student Registration Form</u></h2></center>
<%@ page import="java.sql.*"%>
<%
Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb","root","");
%>
<form action="batch.jsp" method ="Post">  
<label>Student ID : </label>
<input type="text" name="sid" size="15" placeholder="student roll no"/> <br> <br>
Password :  
<input type="Password" id="pass" name="p" placeholder="student date of birth"> <br><br>   
Confirm password :  
<input type="Password" id="repass" name="rp" placeholder="student date of birth"> <br> <br> 
<label> Firstname : </label>         
<input type="text" name="fn" size="15" placeholder="name"/> <br> <br>  
<label> Lastname : </label>         
<input type="text" name="ln" size="15" placeholder="surname"/> <br> <br>    
 
<label>   
Gender :  
</label>
 <input type="radio" id="male" name="gen" >
 <label>Male</label>
 <input type="radio" id="female" name="gen" >
 <label>Female</label><br>
<br>  

<label>   
Mobile Number :  
</label>    
<input type="text" name="ph" size="10" placeholder="9836xxxxxx"/> <br> <br>  
Email :  
<input type="email" id="email" name="email" placeholder="abc@gmail.com"/> <br>    
<br>  
Address :<br>
<textarea cols="50" rows="8" name="add" value="address" placeholder="Enter your Address"></textarea>  
<br> <br>  
<label> Date of Birth : </label>         
<input type="date" name="d" /> <br> <br> 
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
<label> Marksheet of Class X : </label>         
<input type="file" name="m1" /> <br> <br> 
<label> Marksheet of Class XII : </label>         
<input type="file" name="m2" /> <br> <br> 
<label> UG Marksheet : </label>         
<input type="file" name="m3" /> <br> <br> 
<label> Aadhaar Card : </label>         
<input type="file" name="ac" /> <br> <br> 
<label> Session : </label>         
<input type="text" name="ss" placeholder="2021-2023" /> <br> <br> 
<label> Student Image : </label>         
<input type="file" name="im" /> <br> <br> 
<input type="submit" name="submit" value="Submit"/>  
</form>  
</body>  
</html>  