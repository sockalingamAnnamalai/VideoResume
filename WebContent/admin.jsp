<%@ page language="java" contentType="text/html; charset=UTF-8"

pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<style>

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

.top{

width: 350px;

white-space: nowrap;

float: left;

}

.bottom{

width: 350px;

white-space: nowrap;

float: left;

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

<a class="navbar-brand" href="/videoResumeproject/adminaction.jsp">

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

<!-- <a href="/videoResumeproject/adminaction.jsp" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">

Account

<span class="caret"></span></a>

<ul class="dropdown-menu" role="menu">

<li class="dropdown-header">SETTINGS</li>

<li class=""><a href="/videoResumeproject/adminaction.jsp">Other Link</a></li>

<li class=""><a href="/videoResumeproject/adminaction.jsp">Other Link</a></li>

<li class=""><a href="/videoResumeproject/adminaction.jsp">Other Link</a></li>

<li class="divider"></li>

<li><a href="/videoResumeproject/adminaction.jsp">Logout</a></li>

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

<li class="active"><a href="/videoResumeproject/adminaction.jsp">Videos</a></li>

<li><a href="/videoResumeproject/adminaction.jsp">Send Warning</a></li>

</ul>

</div> -->

<div class="col-md-10 content">

<div class="panel panel-default">

<div class="panel-heading">

Uploaded Videos

</div>

<div class="panel-body">

Here are the currently uploaded videos on the website. You may delete videos that are inappropriate or administrate the user here.

<br><br/>

<div class="wrapper" style="max-height: 330px; width: auto; direction: ltr; overflow-x: hidden; overflow-y: scroll; display: inline-block; padding: 0; margin: 0">

<div align = "center" class="top">
<video width="300" height="150" controls>
  <source src="http://clips.vorwaerts-gmbh.de/VfE_html5.mp4" type="video/mp4">
</video>
<br></br>
By Keviao Aro
ID: 56456
<br></br>
<a onClick="deleteVideo();" style="cursor: pointer; cursor: hand;">Delete</a>
<a href="/videoResumeproject/adminaction.jsp">Admin</a>
</div>

<div align = "center" class="top">
<video width="300" height="150" controls>
  <source src="http://techslides.com/demos/sample-videos/small.mp4" type="video/mp4">
</video>
<br></br>
By Yumm Y
ID: 44223
<br></br>
<a onClick="deleteVideo();" style="cursor: pointer; cursor: hand;">Delete</a>
<a href="/videoResumeproject/adminaction.jsp">Admin</a>
</div>

<div align = "center" class="top">
<video width="300" height="150" controls>
  <source src="http://techslides.com/demos/sample-videos/small.mp4" type="video/mp4">
</video>
<br></br>
By Seep John
ID: 42525
<br></br>
<a onClick="deleteVideo();" style="cursor: pointer; cursor: hand;">Delete</a>
<a href="/videoResumeproject/adminaction.jsp">Admin</a>
</div>

<div align = "center" class="top">
<video width="300" height="150" controls>
  <source src="https://www.w3schools.com/html/mov_bbb.mp4" type="video/mp4">
</video>
<br></br>
By Hungry Joe
ID: 89876
<br></br>
<a onClick="deleteVideo();" style="cursor: pointer; cursor: hand;">Delete</a>
<a href="/videoResumeproject/adminaction.jsp">Admin</a>
</div>

<div align = "center" class="top">
<video width="300" height="150" controls>
  <source src="http://techslides.com/demos/sample-videos/small.mp4" type="video/mp4">
</video>
<br></br>
By Can Man
ID: 11123
<br></br>
<a onClick="deleteVideo();" style="cursor: pointer; cursor: hand;">Delete</a>
<a href="/videoResumeproject/adminaction.jsp">Admin</a>
</div>

<div align = "center" class="bottom">
<video width="300" height="150" controls>
  <source src="http://techslides.com/demos/sample-videos/small.mp4" type="video/mp4">
</video>
<br></br>
By Sue Mary
ID: 34322
<br></br>
<a onClick="deleteVideo();" style="cursor: pointer; cursor: hand;">Delete</a>
<a href="/videoResumeproject/adminaction.jsp">Admin</a>
</div>

<div align = "center" class="bottom">
<video width="300" height="150" controls>
  <source src="https://www.w3schools.com/html/mov_bbb.mp4" type="video/mp4">
</video>
<br></br>
By Young Lo
ID: 88888
<br></br>
<a onClick="deleteVideo();" style="cursor: pointer; cursor: hand;">Delete</a>
<a href="/videoResumeproject/adminaction.jsp">Admin</a>
</div>

<div align = "center" class="bottom">
<video width="300" height="150" controls>
  <source src="https://www.w3schools.com/html/mov_bbb.mp4" type="video/mp4">
</video>
<br></br>
By Jake Lo
ID: 34234
<br></br>
<a onClick="deleteVideo();" style="cursor: pointer; cursor: hand;">Delete</a>
<a href="/videoResumeproject/adminaction.jsp">Admin</a>
</div>

<div align = "center" class="bottom">
<video width="300" height="150" controls>
  <source src="https://www.w3schools.com/html/mov_bbb.mp4" type="video/mp4">
</video>
<br></br>
By Young Lo
ID: 88888
<br></br>
<a onClick="deleteVideo();" style="cursor: pointer; cursor: hand;">Delete</a>
<a href="/videoResumeproject/adminaction.jsp">Admin</a>
</div>

<div align = "center" class="bottom">
<video width="300" height="150" controls>
  <source src="http://clips.vorwaerts-gmbh.de/VfE_html5.mp4" type="video/mp4">
</video>
<br></br>
By Jim Yam
ID: 34499
<br></br>
<a onClick="deleteVideo();" style="cursor: pointer; cursor: hand;">Delete</a>
<a href="/videoResumeproject/adminaction.jsp">Admin</a>
</div>

</div>

</div>

</div>

</div>

<div class="col-md-10 content">

<div class="panel panel-default">

<div class="panel-heading">

User List - Send Warning or Administrative Action

</div>

<div class="panel-body">

Here are you may send a warning or perform administrative action to a user who is breaking the rules.

<br><br/>

<div class="scroll">

<input type="text" id="myInput" onkeyup="search()" placeholder="Search by ID..." title="ID Search">

<table style="width:100%" id = "User Table">
  <tr>
    <th><a onClick="sortFirst();" style="cursor: pointer; cursor: hand;">First Name</a></th>
    <th><a onClick="sortLast();" style="cursor: pointer; cursor: hand;">Last Name</a></th> 
    <th><a onClick="sortID();" style="cursor: pointer; cursor: hand;">Profile ID</a></th>
    <th><a onClick="sortRole();" style="cursor: pointer; cursor: hand;">Role</a></th>
    <th>Send Warning</th>
    <th>Administrative Action</th>
  </tr>
  <tr>
    <td>Jill</td>
    <td>Doe</td>
    <td>56564</td>
    <td>Job Seeker</td>
    <td><a onClick="promptWarn();" style="cursor: pointer; cursor: hand;">Warn</a></td>
    <td><a href="/videoResumeproject/adminaction.jsp">Admin</a></td>
  </tr>
  <tr>
    <td>Joe</td>
    <td>Doe</td>
    <td>55560</td>
    <td>Job Seeker</td>
    <td><a onClick="promptWarn();" style="cursor: pointer; cursor: hand;">Warn</a></td>
    <td><a href="/videoResumeproject/adminaction.jsp">Admin</a></td>
  </tr>
  <tr>
    <td>Jiillo</td>
    <td>Yams</td>
    <td>56480</td>
    <td>Job Seeker</td>
    <td><a onClick="promptWarn();" style="cursor: pointer; cursor: hand;">Warn</a></td>
    <td><a href="/videoResumeproject/adminaction.jsp">Admin</a></td>
  </tr>
    <tr>
    <td>Jiillo</td>
    <td>Yams</td>
    <td>38043</td>
    <td>Job Seeker</td>
    <td><a onClick="promptWarn();" style="cursor: pointer; cursor: hand;">Warn</a></td>
    <td><a href="/videoResumeproject/adminaction.jsp">Admin</a></td>
  </tr>
    <tr>
    <td>Jelatin</td>
    <td>Desert</td>
    <td>89807</td>
    <td>Job Seeker</td>
    <td><a onClick="promptWarn();" style="cursor: pointer; cursor: hand;">Warn</a></td>
    <td><a href="/videoResumeproject/adminaction.jsp">Admin</a></td>
  </tr>
    <tr>
    <td>Liam</td>
    <td>Castle</td>
    <td>22224</td>
    <td>Job Seeker</td>
    <td><a onClick="promptWarn();" style="cursor: pointer; cursor: hand;">Warn</a></td>
    <td><a href="/videoResumeproject/adminaction.jsp">Admin</a></td>
  </tr>
    <tr>
    <td>Liaoo</td>
    <td>Jums</td>
    <td>94455</td>
    <td>Employer</td>
    <td><a onClick="promptWarn();" style="cursor: pointer; cursor: hand;">Warn</a></td>
    <td><a href="/videoResumeproject/adminaction.jsp">Admin</a></td>
  </tr>
    <tr>
    <td>Boibolo</td>
    <td>Lao</td>
    <td>18810</td>
    <td>Job Seeker</td>
    <td><a onClick="promptWarn();" style="cursor: pointer; cursor: hand;">Warn</a></td>
    <td><a href="/videoResumeproject/adminaction.jsp">Admin</a></td>
  </tr>
    <tr>
    <td>Uiaogo</td>
    <td>Jams</td>
    <td>77034</td>
    <td>Job Seeker</td>
    <td><a onClick="promptWarn();" style="cursor: pointer; cursor: hand;">Warn</a></td>
    <td><a href="/videoResumeproject/adminaction.jsp">Admin</a></td>
  </tr>
    <tr>
    <td>Well</td>
    <td>Jones</td>
    <td>10222</td>
    <td>Job Seeker</td>
    <td><a onClick="promptWarn();" style="cursor: pointer; cursor: hand;">Warn</a></td>
    <td><a href="/videoResumeproject/adminaction.jsp">Admin</a></td>
  </tr>
    <tr>
    <td>Marshmello</td>
    <td>Maoss</td>
    <td>63665</td>
    <td>Job Seeker</td>
    <td><a onClick="promptWarn();" style="cursor: pointer; cursor: hand;">Warn</a></td>
    <td><a href="/videoResumeproject/adminaction.jsp">Admin</a></td>
  </tr>
    <tr>
    <td>sekaolo</td>
    <td>Tan</td>
    <td>95416</td>
    <td>Employer</td>
    <td><a onClick="promptWarn();" style="cursor: pointer; cursor: hand;">Warn</a></td>
    <td><a href="/videoResumeproject/adminaction.jsp">Admin</a></td>
  </tr>
    <tr>
    <td>yumllo</td>
    <td>hugo</td>
    <td>54490</td>
    <td>Job Seeker</td>
    <td><a onClick="promptWarn();" style="cursor: pointer; cursor: hand;">Warn</a></td>
    <td><a href="/videoResumeproject/adminaction.jsp">Admin</a></td>
  </tr>
    <tr>
    <td>Roboert</td>
    <td>Steel</td>
    <td>53000</td>
    <td>Job Seeker</td>
    <td><a onClick="promptWarn();" style="cursor: pointer; cursor: hand;">Warn</a></td>
    <td><a href="/videoResumeproject/adminaction.jsp">Admin</a></td>
  </tr>
    <tr>
    <td>Gllo</td>
    <td>Yams</td>
    <td>97880</td>
    <td>Job Seeker</td>
    <td><a onClick="promptWarn();" style="cursor: pointer; cursor: hand;">Warn</a></td>
    <td><a href="/videoResumeproject/adminaction.jsp">Admin</a></td>
  </tr>
    <tr>
    <td>Willo</td>
    <td>Yams</td>
    <td>11420</td>
    <td>Job Seeker</td>
    <td><a onClick="promptWarn();" style="cursor: pointer; cursor: hand;">Warn</a></td>
    <td><a href="/videoResumeproject/adminaction.jsp">Admin</a></td>
  </tr>
    <tr>
    <td>Ewello</td>
    <td>ems</td>
    <td>93053</td>
    <td>Job Seeker</td>
    <td><a onClick="promptWarn();" style="cursor: pointer; cursor: hand;">Warn</a></td>
    <td><a href="/videoResumeproject/adminaction.jsp">Admin</a></td>
  </tr>
    <tr>
    <td>To</td>
    <td>haha</td>
    <td>12220</td>
    <td>Job Seeker</td>
    <td><a onClick="promptWarn();" style="cursor: pointer; cursor: hand;">Warn</a></td>
    <td><a href="/videoResumeproject/adminaction.jsp">Admin</a></td>
  </tr>
    <tr>
    <td>nnloT</td>
    <td>Baas</td>
    <td>33320</td>
    <td>Job Seeker</td>
    <td><a onClick="promptWarn();" style="cursor: pointer; cursor: hand;">Warn</a></td>
    <td><a href="/videoResumeproject/adminaction.jsp">Admin</a></td>
  </tr>
    <tr>
    <td>Eillo</td>
    <td>Yams</td>
    <td>61250</td>
    <td>Job Seeker</td>
    <td><a onClick="promptWarn();" style="cursor: pointer; cursor: hand;">Warn</a></td>
    <td><a href="/videoResumeproject/adminaction.jsp">Admin</a></td>
  </tr>
    <tr>
    <td>Morganlo</td>
    <td>GYams</td>
    <td>95480</td>
    <td>Job Seeker</td>
    <td><a onClick="promptWarn();" style="cursor: pointer; cursor: hand;">Warn</a></td>
    <td><a href="/videoResumeproject/adminaction.jsp">Admin</a></td>
  </tr>
    <tr>
    <td>Jelloo</td>
    <td>Has</td>
    <td>31480</td>
    <td>Employer</td>
    <td><a onClick="promptWarn();" style="cursor: pointer; cursor: hand;">Warn</a></td>
    <td><a href="/videoResumeproject/adminaction.jsp">Admin</a></td>
  </tr>
    <tr>
    <td>Imortalo</td>
    <td>Ba</td>
    <td>29999</td>
    <td>Job Seeker</td>
    <td><a onClick="promptWarn();" style="cursor: pointer; cursor: hand;">Warn</a></td>
    <td><a href="/videoResumeproject/adminaction.jsp">Admin</a></td>
  </tr>
    <tr>
    <td>Billo</td>
    <td>Yays</td>
    <td>98980</td>
    <td>Job Seeker</td>
    <td><a onClick="promptWarn();" style="cursor: pointer; cursor: hand;">Warn</a></td>
    <td><a href="/videoResumeproject/adminaction.jsp">Admin</a></td>
  </tr>
</table>

<!-- 
<ul>
	
<li>John Doe Profile ID: 354355 Warn Administrative Action</li>

<li>Mike Doe Profile ID: 999933 Warn Administrative Action</li>

<li>Jane Doe Profile ID: 343243 Warn Administrative Action</li>

</ul>
-->
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

</div>

<script>

/***************************************************************************************
*    Title: How TO - Sort a Table
*    Availability: https://www.w3schools.com/howto/howto_js_sort_table.asp
***************************************************************************************/

function sortFirst() { //Will need to be modified in Sprint 3
  var table, rows, switching, i, x, y, shouldSwitch;
  table = document.getElementById("User Table");
  switching = true;
  /*Make a loop that will continue until
  no switching has been done:*/
  while (switching) {
    //start by saying: no switching is done:
    switching = false;
    rows = table.getElementsByTagName("TR");
    /*Loop through all table rows (except the
    first, which contains table headers):*/
    for (i = 1; i < (rows.length - 1); i++) {
      //start by saying there should be no switching:
      shouldSwitch = false;
      /*Get the two elements you want to compare,
      one from current row and one from the next:*/
      x = rows[i].getElementsByTagName("TD")[0];
      y = rows[i + 1].getElementsByTagName("TD")[0];
      //check if the two rows should switch place:
      if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
        //if so, mark as a switch and break the loop:
        shouldSwitch= true;
        break;
      }
    }
    if (shouldSwitch) {
      /*If a switch has been marked, make the switch
      and mark that a switch has been done:*/
      rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
      switching = true;
    }
  }
}

/***************************************************************************************
*    Title: How TO - Sort a Table
*    Availability: https://www.w3schools.com/howto/howto_js_sort_table.asp
***************************************************************************************/

function sortLast() { //Will need to be modified in Sprint 3
	  var table, rows, switching, i, x, y, shouldSwitch;
	  table = document.getElementById("User Table");
	  switching = true;
	  /*Make a loop that will continue until
	  no switching has been done:*/
	  while (switching) {
	    //start by saying: no switching is done:
	    switching = false;
	    rows = table.getElementsByTagName("TR");
	    /*Loop through all table rows (except the
	    first, which contains table headers):*/
	    for (i = 1; i < (rows.length - 1); i++) {
	      //start by saying there should be no switching:
	      shouldSwitch = false;
	      /*Get the two elements you want to compare,
	      one from current row and one from the next:*/
	      x = rows[i].getElementsByTagName("TD")[1];
	      y = rows[i + 1].getElementsByTagName("TD")[1];
	      //check if the two rows should switch place:
	      if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
	        //if so, mark as a switch and break the loop:
	        shouldSwitch= true;
	        break;
	      }
	    }
	    if (shouldSwitch) {
	      /*If a switch has been marked, make the switch
	      and mark that a switch has been done:*/
	      rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
	      switching = true;
	    }
	  }
	}

/***************************************************************************************
*    Title: How TO - Sort a Table
*    Availability: https://www.w3schools.com/howto/howto_js_sort_table.asp
***************************************************************************************/

function sortID() { //Will need to be modified in Sprint 3
	  var table, rows, switching, i, x, y, shouldSwitch;
	  table = document.getElementById("User Table");
	  switching = true;
	  /*Make a loop that will continue until
	  no switching has been done:*/
	  while (switching) {
	    //start by saying: no switching is done:
	    switching = false;
	    rows = table.getElementsByTagName("TR");
	    /*Loop through all table rows (except the
	    first, which contains table headers):*/
	    for (i = 1; i < (rows.length - 1); i++) {
	      //start by saying there should be no switching:
	      shouldSwitch = false;
	      /*Get the two elements you want to compare,
	      one from current row and one from the next:*/
	      x = rows[i].getElementsByTagName("TD")[2];
	      y = rows[i + 1].getElementsByTagName("TD")[2];
	      //check if the two rows should switch place:
	      if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
	        //if so, mark as a switch and break the loop:
	        shouldSwitch= true;
	        break;
	      }
	    }
	    if (shouldSwitch) {
	      /*If a switch has been marked, make the switch
	      and mark that a switch has been done:*/
	      rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
	      switching = true;
	    }
	  }
	}

/***************************************************************************************
*    Title: How TO - Sort a Table
*    Availability: https://www.w3schools.com/howto/howto_js_sort_table.asp
***************************************************************************************/
	
function sortRole() { //Will need to be modified in Sprint 3
	  var table, rows, switching, i, x, y, shouldSwitch;
	  table = document.getElementById("User Table");
	  switching = true;
	  /*Make a loop that will continue until
	  no switching has been done:*/
	  while (switching) {
	    //start by saying: no switching is done:
	    switching = false;
	    rows = table.getElementsByTagName("TR");
	    /*Loop through all table rows (except the
	    first, which contains table headers):*/
	    for (i = 1; i < (rows.length - 1); i++) {
	      //start by saying there should be no switching:
	      shouldSwitch = false;
	      /*Get the two elements you want to compare,
	      one from current row and one from the next:*/
	      x = rows[i].getElementsByTagName("TD")[3];
	      y = rows[i + 1].getElementsByTagName("TD")[3];
	      //check if the two rows should switch place:
	      if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
	        //if so, mark as a switch and break the loop:
	        shouldSwitch= true;
	        break;
	      }
	    }
	    if (shouldSwitch) {
	      /*If a switch has been marked, make the switch
	      and mark that a switch has been done:*/
	      rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
	      switching = true;
	    }
	  }
	}

function promptWarn() {
	var warning = prompt("Please enter warning reason", "Reason Here...	");
	if(warning)
	{
		window.alert("Warning has been sent.")
		location.reload()
	}
}

function deleteVideo() {
	var warning = prompt("Please enter deletion reason", "Reason Here...	");
	if(warning)
	{
		window.alert("Video has been deleted. Reason sent.")
		location.reload()
	}
}


/***************************************************************************************
*    Title: How TO - Filter/Search Table
*    Availability: https://www.w3schools.com/howto/howto_js_filter_table.asp
***************************************************************************************/
function search() {
	  var input, filter, table, tr, td, i;
	  input = document.getElementById("myInput");
	  filter = input.value.toUpperCase();
	  table = document.getElementById("User Table");
	  tr = table.getElementsByTagName("tr");
	  for (i = 0; i < tr.length; i++) {
	    td = tr[i].getElementsByTagName("td")[2];
	    if (td) {
	      if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
	        tr[i].style.display = "";
	      } else {
	        tr[i].style.display = "none";
	      }
	    }       
	  }
	}

</script>

</body>

</html>

