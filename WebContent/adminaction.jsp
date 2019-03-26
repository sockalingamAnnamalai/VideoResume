<%@ page language="java" contentType="text/html; charset=UTF-8"

pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<style>

button.accordion {

border: 1px solid rgb(90,90,90);

border-radius: 1px;

padding: 1em;

display: inline-block;

    background-color: #f5f5f5;
    color: #000;
    cursor: pointer;
    width: 100%;
    text-align: left;
    outline: none;
    font-size: 15px;
}

div.accordpanel {
    padding: 0 18px;
    display: none;
    background-color: white;
}

button.accordion.active, button.accordion:hover {
    background-color: #ccc; 
}

div.scroll {

height: 400px;

overflow-y: scroll;

}

* {box-sizing: border-box;}

.wrapper {

margin: 0 auto;

overflow-x: scroll;

}

.wrapper > div {

border: 2px solid rgb(90,90,90);

border-radius: 2px;

padding: 1em;

display: inline-block;

}


</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Admin Page</title>

<link

href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"

rel="stylesheet" />

<link rel="stylesheet"

href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

<link rel="stylesheet" type="text/css" href="css/style.css">

<script src="jquery-3.2.1.min.js"></script>	

</head>

<body>

<nav class="navbar navbar-default navbar-static-top">

<div class="container-fluid">

<!-- Brand and toggle get grouped for better mobile display -->

<div class="navbar-header">

<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">

<span class="sr-only">Toggle navigation</span>

<span class="icon-bar"></span>

<span class="icon-bar"></span>

<span class="icon-bar"></span>

</button>

<a class="navbar-brand" href="#">

Admin Page

</a>

</div>

<!-- Collect the nav links, forms, and other content for toggling -->

<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

<!-- <form class="navbar-form navbar-left" method="GET" role="search">

<div class="form-group">

<input type="text" name="q" class="form-control" placeholder="Search">

</div>

<button type="submit" class="btn btn-default"><i class="glyphicon glyphicon-search"></i></button>

</form> -->

<ul class="nav navbar-nav navbar-right">

<li><a href="index.jsp">Logout</a></li>

<li class="dropdown ">

<!-- <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">

Account

<span class="caret"></span></a>

<ul class="dropdown-menu" role="menu">

<li class="dropdown-header">SETTINGS</li>

<li class=""><a href="#">Other Link</a></li>

<li class=""><a href="#">Other Link</a></li>

<li class=""><a href="#">Other Link</a></li>

<li class="divider"></li>

<li><a href="#">Logout</a></li>

</ul>

</li> -->

</ul>

</div><!-- /.navbar-collapse -->

</div><!-- /.container-fluid -->

</nav>

<div class="container-fluid main-container">

<!--

<div class="col-md-2 sidebar">

<ul class="nav nav-pills nav-stacked">

<li class="active"><a href="#">Videos</a></li>

<li><a href="#">Send Warning</a></li>

</ul>

</div> -->

<div class="col-md-10 content">

<div class="panel panel-default">

<div class="panel-heading">

Administrative Action

</div>

<div class="panel-body">

Select from the following actions:
<br><br/>
<button class="accordion">Limit (The user will be limited from specific features for a specified amount of time)</button>
<div class="accordpanel">
<br></br>
<form action="javascript:submitLimitation();">
  <input type="checkbox"> Upload Video<br>
  <input type="checkbox"> Submit Application<br>
  <input type="checkbox"> Update Profile<br>
  <input type="checkbox"> View Job Listings<br>
  <br><br/>
  <input type="text" value="1"> Time in Days (Entering nothing results in an indefinite limitation)
  <br></br>
  <input type="submit" value="Submit">
</form>
</div>

<br><br/>
<button class="accordion">Suspend (The user will not be allowed to login for a specified amount of time)</button>
<div class="accordpanel">
<br></br>
How long should the user be suspended for? What is the reason for the suspension?
<br></br>
<form action="javascript:submitSuspension()">
  <input type="text" value="1"> Time in Days (Entering nothing results in an indefinite suspension)
  <br></br>
  <input type="text" value=""> Reason
  <br></br>
  <input type="submit" value="Submit">
</form>

</div>

<br><br/>
<button class="accordion">Terminate (The user account will be terminated)</button>
<div class="accordpanel">
<br><br/>
What is the reason for the termination?
<br><br/>
<form action="javascript:submitTermination()">
  <input type="text" value=""> Reason
  <br></br>
  <input type="submit" value="Submit">
</form>
</div>
<br><br/>
<a href="/videoResumeproject/admin.jsp">Back</a>
</div>

</div>

</div>

</div>


<!-- Copyright from example put into comments; let me know if we need it

<footer class="pull-left footer">

<p class="col-md-12">

<hr class="divider">

Copyright &COPY; 2015 <a href="http://www.pingpong-labs.com">Gravitano</a>

</p> 

</footer>-->

<script>

function submitLimitation() {
    alert("Limitation Successful.");
    window.location = "/videoResumeproject/admin.jsp";
}

function submitSuspension() {
    alert("Suspension Successful.");
    window.location = "/videoResumeproject/admin.jsp";
}

function submitTermination() {
    alert("Termination Successful.");
    window.location = "/videoResumeproject/admin.jsp";
}

/***************************************************************************************
*    Title: How TO - Collapsibles/Accordion
*    Availability: https://www.w3schools.com/howto/howto_js_accordion.asp
***************************************************************************************/

var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
    acc[i].onclick = function(){
        this.classList.toggle("active");
        var panel = this.nextElementSibling;
        if (panel.style.display === "block") {
            panel.style.display = "none";
        } else {
            panel.style.display = "block";
        }
    }
}
</script>

</body>

</html>