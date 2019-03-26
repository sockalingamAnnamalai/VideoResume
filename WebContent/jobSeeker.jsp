<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Job Seeker</title>

<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<%String name= (String)request.getParameter("name");
String msg=(String)request.getParameter("message");
String username= (String)request.getParameter("username");%>

<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-10">
				<h1 class="">Welcome</h1>
				<h4 class="media-heading"><%=name %></h4>
                <h5>Software Developer at <a href="http://google.com">Google</a></h5>
                <hr style="margin:8px auto">
				<div class="skills"></div>
				<div class="row">
					<%  Class.forName("com.mysql.jdbc.Driver");
                     String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
                     String DB_URL="jdbc:mysql://localhost:3306/mydb";
                     String USER = "root";
                     String PASS = "root";
            Connection conn =  DriverManager.getConnection(DB_URL, USER, PASS);
            
            Statement stmt =  conn.createStatement();
             String sql,sql2;
             System.out.println("hello");
             System.out.println();
            // sql = "select * from jobseeker where username='"+request.getParameter("Username")+"' AND password='"+request.getParameter("Password")+"'";
           
           //out.print("username is "+username);
           //sql = "select * from jobseeker where username='"+username+"'";
           sql2 = "select skills from userskills where username='"+username+"'";
            //ResultSet rs =  stmt.executeQuery(sql); 
            ResultSet rs2 = stmt.executeQuery(sql2);
           //rs.next();
           //rs2.next();
           while(rs2.next())
           {
           String skill = rs2.getString("skills");
           
           
             
             %>
                    <span class="label label-default"><%=skill%></span>
                    <!--<span class="label label-default">HTML5/CSS3</span> 
                    <span class="label label-default">jQuery</span> 
                    <span class="label label-default">Python</span> 
                    <span class="label label-default">Java</span> 
                    <span class="label label-default">jQuery</span>  -->
                    <%} %>
				</div>
			</div>
			<div class="col-sm-2">
				<a href="#" class="pull-right"><img title="profile image"
					class="img-circle img-responsive"
					src="https://organicthemes.com/demo/profile/files/2012/12/profile_img.png"></a>
				<span class="glyphicon glyphicon-camera"></span> <span>Update
						Image</span>
			</div>
		</div>
		<br><div class = "row">
		<div class="col-sm-3">
			<ul class="nav nav-pills nav-stacked" role="tablist">
				<li class="nav-item active"><a class="nav-link" data-toggle="pill"
					href="#profile" role="tab">Profile</a></li>
				<li class="nav-item"><a class="nav-link"
					data-toggle="pill" href="#search" role="tab">Search Jobs</a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="pill"
					href="#resumes" role="tab">Resumes</a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="pill"
					href="#onewayInterview" role="tab">Post One Way Interview</a></li>	
				<li class="nav-item"><a class="nav-link" data-toggle="pill"
					href="#savedJobs" role="tab">Saved Jobs <span class="badge">5</span></a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="pill"
					href="#appliedJobs" role="tab">Applied Jobs <span class="badge">2</span></a></li>
				<li class="nav-item"><a class="nav-link" href="index.jsp" role="tab"> Logout </a></li>
			</ul>
		</div>
		<div class="col-sm-8">
			<!-- Tab panes -->
			<div class="tab-content">
			
			<!-- Edit Profile Tab -->
				<div class="tab-pane active" id="profile" role="tabpanel">
				
					<div class="panel-group" id="accordion">
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion"
											href="#collapse1"> Personal Details</a>
									</h4>
								</div>
								<div id="collapse1" class="panel-collapse collapse in">
									<div class="panel-body">
										<form action="JobSeekerManager" method="post">
										<%  Class.forName("com.mysql.jdbc.Driver");
					/*  String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
					 String DB_URL="jdbc:mysql://localhost:3306/mydb";
					 String USER = "root";
					 String PASS = "root";
 */	        Connection conn1 =  DriverManager.getConnection(DB_URL, USER, PASS);
	        
	        Statement stmt1 =  conn1.createStatement();
	         
	         System.out.println("hello");
	         System.out.println();
	        // sql = "select * from jobseeker where username='"+request.getParameter("Username")+"' AND password='"+request.getParameter("Password")+"'";
	       
	       //out.print("username is "+username);
	       sql = "select * from jobseeker where username='"+username+"'";
	        ResultSet rs =  stmt.executeQuery(sql); 
	       rs.next();
	       String fname = rs.getString("fname");
	       String lname = rs.getString("lname");
	       String address = rs.getString("address");
	       String email = rs.getString("email");
	       int phone = rs.getInt("phone");
	       
	         
	         %>
											<div class="col-sm-6">
                                                  
                                                												<div class="form-group">
													<label for="exampleInputEmail1">Username</label> <input
														type="text" class="form-control" name="Username" readonly
														id="Username" value=<%=username %>
														required="required">
												</div>  
                                                  
												<div class="form-group">
													<label for="exampleInputEmail1">First Name</label> <input
														type="text" class="form-control" name="firstName"
														id="firstName" value=<%=fname %>
														required="required">
												</div>

												<div class="form-group">
													<label for="exampleInputEmail1">Last Name</label> <input
														type="text" class="form-control" name="lastName"
														id="lastName" value=<%=lname %>
														required="required">
												</div>
												
												<div class="form-group">
													<label for="exampleInputEmail1">Address</label> <input
														type="text" class="form-control" name="address" 
														id="address" value=<%=address %>
														required="required">
												</div>
												<div class="form-group">
													<label for="exampleInputEmail1">Phone Number</label> <input
														type="number" class="form-control" name="phoneNumber"
														 id="phoneNumber" value=<%=phone %>
														required="required">
												</div>
											</div>
											<div class="col-sm-6">

												<div class="form-group">
													<label for="exampleInputEmail1">Personal Email</label> <input
														type="text" class="form-control" name="personalEmail"
														 id="personalEmail"
														value=<%=email %> required="required">
												</div>


												<p align="center">
												  
												<input type="hidden" name="name" value=<%=name%> />
                        <input type="hidden" name="username1" value=<%=username%> />
                    
                            <%if(msg != null) {%>
                            <div class="form-group">
                            <div class="row">
                            <label style="color:red;margin:8px;"><%=msg%></label>
                            </div>
                            </div>
                        <%} %>
                   <input type="submit" style="width: 30%; font-size: 1.1em;" class="btn btn-large btn btn-success btn-lg btn-block" name="editprofilebutton" value="Edit Profile">  
												  
												</p>
											</div>
										</form>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion"
											href="#collapse2"> Education</a>
									</h4>
								</div>
								<div id="collapse2" class="panel-collapse collapse">
									<div class="panel-body"></div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion"
											href="#collapse3"> Skills</a>
									</h4>
								</div>
								<div id="collapse3" class="panel-collapse collapse">
									<div class="panel-body">
										<form action="JobSeekerManager" method="post">
											<div class="col-sm-6">
											    <input type="hidden" name="name" value=<%=name%> />
                                               <input type="hidden" name="username1" value=<%=username%> />
												<input class="form-control" type="text" placeholder="Add Skill" name="skill">
												<input type="submit" class="btn btn-default" name="editprofilebutton" value="Add">
											</div>
										</form>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion"
											href="#collapse4"> Work Experience</a>
									</h4>
								</div>
								<div id="collapse4" class="panel-collapse collapse">
									<div class="panel-body">
										<form action="">
											<div class="form-group">
												<label>Enter Position Title:</label> <input
													class="form-control" type="text" id="positionTitle"
													placeholder="e.g. 'Software Developer','Account Manager'">
											</div>
											<div class="form-group">
												<label>Years as Position:</label> <input
													class="form-control" type="text" placeholder="Enter Years">
											</div>
											<button style="width: 30%; font-size: 1.1em;"
												class="btn btn-default btn-block">
												<b>Add</b>
											</button>
										</form>
									</div>
								</div>
							</div>
						</div>
				</div>
			
				<!-- Search Jobs Tab -->
				<div class="tab-pane" id="search" role="tabpanel">
					<h2>Search For your Favorite Job</h2>
					<form action="">
						<div class="row">
							<div class="form-group search">
								<i class="fa fa-search" aria-hidden="true"></i> <input
									type="text" id="keywords" name="keywords"
									placeholder="Search for Jobs" class="form-control word">
							</div>
							<div class="form-group location">
								<i class="fa fa-map-marker" aria-hidden="true"></i> <input
									type="text" id="keywords" name="keywords"
									placeholder="Search for Jobs" class="form-control word">
							</div>
							<button id='search' type="submit"
								class="btn btn-primary search-button">Search</button>
						</div>
					</form>
					<br>
					
				</div>

				<!-- Record / Upload Resume -->
				<div class="tab-pane" id="resumes" role="tabpanel">
					<!-- <div class="panel panel-default">
						<div class="panel-heading">Record Video Resume</div>
						<div class="panel-body"> -->
						<h4>Record Video Resume</h4>
							<video style="height: 200px;width: 200px;border: 1px solid #333;"></video>
							  <input type="button" class="btn btn-default" onclick="onStartButtonClick()" value="Start recording">
							  <input type="button" class="btn btn-default" onclick="onStopButtonClick()" value="Stop/Save">
						<!-- </div>
					</div> -->
					<br><br>
					<div class="panel panel-default">
						<div class="panel-heading">Upload Resumes</div>
						<div class="panel-body">
								<form method="post" action="FileUploadServlet"	enctype="multipart/form-data">
									Select file to upload: <input type="file" class="btn btn-default" name="uploadFile" />
									<br />
									<br /> <input type="submit" class="btn btn-default" value="Upload" />
								</form>
						</div>
					</div>
				</div>
				<div class="tab-pane" id="onewayInterview" role="tabpanel">
						<h4>Record One Way Interview</h4>
						<video
							style="height: 200px; width: 200px; border: 1px solid #333;" class="oneWayInterviewVideo"
							src=""></video>
						<input type="button" class="btn btn-default"
							onclick="onStartButtonClick2()" value="Start recording"> <input
							type="button" class="btn btn-default"
							onclick="onStopButtonClick2()" value="Stop/Save">
						<div class="panel panel-default">
							<div class="panel-heading">Upload One Way Interview</div>
							<div class="panel-body">
								<form method="post" action="uploadOneWayInterview"
									enctype="multipart/form-data">
									Select file to upload: <input type="file"
										class="btn btn-default" name="uploadFile" /> <br /> <br />
									<input type="submit" class="btn btn-default" value="Upload" />
								</form>
							</div>
						</div>						
					</div>
				<div class="tab-pane" id="savedJobs" role="tabpanel">
				<div class="row">
							<div class="card">
								<div class="card-block">
									<h3 class="card-title">
										Software Developer <small>Microsoft</small>
									</h3>
									<p class="card-text">Description of Microsoft</p>
									<a href="#" class="btn btn-default">Edit</a>
								</div>
							</div>
							<div class="card">
								<div class="card-block">
									<h3 class="card-title">
										Senior Cloud Developer<small>Twitter</small>
									</h3>
									<p class="card-text">Description of Twitter</p>
									<a href="#" class="btn btn-default">Edit</a>
								</div>
							</div>
							<div class="card">
								<div class="card-block">
									<h3 class="card-title">
										Full Stack Developer<small>Adobe</small>
									</h3>
									<p class="card-text">Description of Adobe</p>
									<a href="#" class="btn btn-default">Edit</a>
								</div>
							</div>
							<div class="card">
								<div class="card-block">
									<h3 class="card-title">
										Software Developer<small>Walmart</small>
									</h3>
									<p class="card-text">Description of Walmart</p>
									<a href="#" class="btn btn-default">Edit</a>
								</div>
							</div>
							<div class="card">
								<div class="card-block">
									<h3 class="card-title">
										Python Developer<small>Salesforce</small>
									</h3>
									<p class="card-text">Description of Salesforce</p>
									<a href="#" class="btn btn-default">Edit</a>
								</div>
							</div>
						</div>
				</div>
				<div class="tab-pane" id="appliedJobs" role="tabpanel">
				<div class="row">
							<div class="card">
								<div class="card-block">
									<h3 class="card-title">
										Senior Software Developer <small>Qualcomm</small>
									</h3>
									<p class="card-text">Description of qualcomm</p>
									<a href="#" class="btn btn-default">Go</a>
								</div>
							</div>
							<div class="card">
								<div class="card-block">
									<h3 class="card-title">
										Senior Python Developer <small>Redhat</small>
									</h3>
									<p class="card-text">Description of redhat</p>
									<a href="#" class="btn btn-default">Go</a>
								</div>
							</div>
						</div>
				</div>
				<div class="tab-pane" id="settings" role="tabpanel">Settings</div>
				<div class="tab-pane" id="logout" role="tabpanel">Logout</div>
			</div>

		</div>
		<div class="col-sm-1"></div></div>
	</div>
	<script src="js/videoRecorder1.js" ></script>
 	<script src="js/videoRecorder2.js" ></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"
		type="text/javascript"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
		type="text/javascript"></script>
</body>
</html>