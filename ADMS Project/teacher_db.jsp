<!DOCTYPE html>

<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
   
    <link rel="stylesheet" href="CSS/style.css">
   
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
	 <script src="JS/disable.js"></script> 
     <title>Teacher Dashboard</title>
   </head>
<body>
<%@ page import="p1.*"%>
<%
			String tid = (String) session.getAttribute("username");
%>
  <div class="sidebar">
    <!--<div class="logo-details">
     <i class='bx bxl-c-plus-plus'></i>
	 <img src="Images/cit.png" width ="35%" height="80%"></img>
      <span class="logo_name">Calcutta Institute Of Technology<br>
	 </span>
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
          <a href="#" class="active">
            <i class='bx bx-grid-alt' ></i>
            <span class="links_name">Dashboard</span>
          </a>
        </li>
		<li>
          <a href="myprofileteacher.jsp">
            <i class='bx bxs-user-detail' ></i>
            <span class="links_name">My Profile</span>
          </a>
        </li>
        <li>
          <a href="#">
            <i class='bx bx-key' ></i>
            <span class="links_name">Change Password</span>
          </a>
        </li>
        <li>
          <a href="#">
            <i class='bx bx-chat' ></i>
            <span class="links_name">Chat</span>
          </a>
        </li>
        <li class="log_out">
          <a href="teacher_logout.jsp">
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
        <span class="dashboard">Teacher Dashboard</span>
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
out.println(" Welcome "+tid);
%>
</span>
       
      </div>
    </nav>

    <div class="home-content">
      <div class="overview-boxes">
        <div class="box">
            <div class="box-topic"><a href="lession.jsp">Lession Plan</a>
			</div> 
        </div>
        <div class="box">
            <div class="box-topic"><a href="http://localhost/Time%20Table/timetableteacher.php">Routine</a>
          </div>
        </div>
        <div class="box">
            <div class="box-topic"><a href="notice_teacher.jsp">Notice</a>
          </div>
        </div>
        <div class="box">
            <div class="box-topic"><a href="assignment.jsp">Assignment</a>
          </div>
        </div>
	      <div class="box">
            <div class="box-topic"><a href="notes.jsp">Notes</a>
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

