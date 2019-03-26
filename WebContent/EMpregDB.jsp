<%@ page import ="java.sql.*" %>
<%
    String ID = request.getParameter("Employer ID");    
    String Companyname = request.getParameter("Company name");
    String firstname = request.getParameter("firstName");
    String lastname = request.getParameter("lastName");
    String address = request.getParameter("address");
    String phonenumber = request.getParameter("phoneNumber");
    String email = request.getParameter("CompanyEmail");
    String password = request.getParameter("Password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb",
            "root", "root");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into employersignup(id, first_name, last_name, email, Companyname, password, phno, address) values ('" + ID + "','" + firstname + "','" + lastname + "','" + email + "','" + Companyname + "','" + password +"','" + phonenumber +"','" + address +"')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("employerProfile.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
%>