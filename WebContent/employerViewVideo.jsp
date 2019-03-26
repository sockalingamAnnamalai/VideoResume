<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html>

<head>
<title>Video Resume</title>
</head>

<body>
<div class="panel-body">
<form>
<% 

String appPath = request.getServletContext().getRealPath("");

String filePath1 = "video.mp4";
String filePath2 = "video.webm";
String filePath3 = "video.ogg";


%>

<video controls>
   <source src=<%=filePath1%> type='video/mp4'/>
   <source src=<%=filePath2%> type='video/webm'/>
   <source src=<%=filePath3%> type='video/ogg codecs="theora, vorbis"' />
</video>
</form>
</div>

</body>
</html>