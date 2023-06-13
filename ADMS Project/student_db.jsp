
<!DOCTYPE html>

<html lang="en" dir="ltr">
  <head>
 <title>Home</title>
    <meta charset="UTF-8">

    <link rel="stylesheet" href="CSS/style.css">
   
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script src="JS/disable.js"></script> 
   </head>
<body>
<%@ page import="p1.*"%>
<%
			String sid = (String) session.getAttribute("username");
%>
  <div class="sidebar">
   <!-- <div class="logo">

	<img src="Images/cit.png" width ="35%" height="80%"></img>
      <span >CIT</span>
    </div>-->
      <ul class="nav-links">
	<li>
		<a href="">
 		<i>
            <img src="Images/cit.png" width ="45%" height="80%"></img></i>
            <span class="links_name">CIT</span>
          </a>
        </li>
        <li>
          <a href="student_db.jsp" class="active">
            <i class='bx bx-grid-alt' ></i>
            <span class="links_name">Dashboard</span>
          </a>
        </li>
		<li>
          <a href="myprofile.jsp">
            <i class='bx bxs-user-detail' ></i>
            <span class="links_name">My Profile</span>
          </a>
        </li>
		<li>
          <a href="#">
            <i class='bx bx-camera' ></i>
            <span class="links_name">Attendance By Camera</span>
          </a>
        </li>
        <li>
          <a href="change.html">
            <i class='bx bx-key' ></i>
            <span class="links_name">Change Password</span>
          </a>
        </li>
        <li>
          <a href="">
            <i class='bx bx-chat' ></i>
            <span class="links_name">Chat</span>
          </a>
        </li>
        <li class="log_out">
          <a href="logout.jsp">
            <i class='bx bx-log-out'></i>
            <span class="links_name">Log out</span>
          </a>
        </li>
      </ul>
  </div>
  <section class="home-section">
    <nav>
      <div class="sidebar-button">
        <i class='bx bx-menu sidebarBtn'></i>
        <span class="dashboard">Student Dashboard</span>
      </div>
      <!--<div class="search-box">
        <input type="text" placeholder="Search...">
        <i class='bx bx-search' ></i>
      </div>-->
	  <div class="dept-name">
        <center><h2>Department of MCA</h2></center>
		</div>
      <div class="profile-details">
        <!--<img src="images/profile.jpg" alt="">-->
        <span class="student_name">
<%
out.println("Welcome "+sid);
%>

</span>
       
      </div>
    </nav>

    <div class="home-content">
      <div class="overview-boxes">
        <div class="box">
            <div class="box-topic"><a href="notice_student.jsp">Notice</a>
			</div> 
        </div>
        <div class="box">
            <div class="box-topic"><a href="http://localhost/Time%20Table/timetablestudent.php">Routine</a>
          </div>
        </div>
        <div class="box">
          <div class="box-topic"><a href="assignmentstudents.jsp">Assignment</a>
        </div>
      </div>
        <div class="box">
            <div class="box-topic"><a href="notesstudents.jsp">Notes</a>
          </div>
        </div>
	      <div class="box">
          <div class="box-topic"><a href="exam/java_exam.html">Online Exam</a>
          </div>
        </div>
        <div class="box">
          <div class="box-topic"><a href="feedback.jsp">Feedback</a>
        </div>
      </div>
      </div>
	  </div>

  </section>

  <script>
   let sidebar = document.querySelector(".sidebar");
let sidebarBtn = document.querySelector(".sidebarBtn");
sidebarBtn.onclick = function() {
  sidebar.classList.toggle("active");
  if(sidebar.classList.contains("active")){
  sidebarBtn.classList.replace("bx-menu" ,"bx-menu-alt-right");
}else
  sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
}
 </script>
	
</body>
</html>

