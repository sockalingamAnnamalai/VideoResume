<%@ page import ="java.sql.*" %>
<%
    String email = request.getParameter("CompanyEmail");    
    String password = request.getParameter("Password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb",
            "root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from employersignup where email='" + email + "' and password='" + password + "'");
    if (rs.next()) {
        session.setAttribute("CompanyEmail", email);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("employerProfile.jsp");
    } else {
        out.println("Invalid password <a href='loginemp.jsp'>try again</a>");
    }
%>