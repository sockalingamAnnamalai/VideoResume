package com.jobseeker;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/JobSeekerManager")
public class JobSeekerManager extends HttpServlet {
    private static final long serialVersionUID = 1L;

   public JobSeekerManager() {
       super();
       
   }

    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String temp=request.getParameter("editprofilebutton");
        String username=request.getParameter("username1");
    
        
        if(temp.equals("Edit Profile"))
        {
            
            try {
                int i=0;
                Connection con=Connector.getConnection();
                String firstname = request.getParameter("firstName");
                String lastname = request.getParameter("lastName");
                String phone = request.getParameter("phoneNumber");
                String email = request.getParameter("personalEmail");
                String address = request.getParameter("address");
                
                
                
                String sql = "update jobseeker set fname=?,lname=?,address=?,email=?,phone=? where username=?";
                PreparedStatement stmt=con.prepareStatement(sql);
                stmt.setString(1, firstname);
                stmt.setString(2, lastname);
                stmt.setString(3, address);
                stmt.setString(4, email);
                stmt.setString(5, phone);
                stmt.setString(6, username);
                i=stmt.executeUpdate();
                if(i>0)
                {
                
                    String message="Updated Successfully";
                    RequestDispatcher rd = request.getRequestDispatcher("jobSeeker.jsp?message="+message+"&name="+firstname+"&username="+username);
                    rd.forward(request, response);
                }
            }
            catch(Exception e)
            {}
        }
        if(temp.equals("Add"))
        {
            try {
                int i=0;
                Connection con=Connector.getConnection();
                String skill=request.getParameter("skill");
                String name=request.getParameter("name");
                String sql = "insert into userskills(username,skills) values(?,?)";
                PreparedStatement stmt=con.prepareStatement(sql);
                stmt.setString(1, username);
                stmt.setString(2, skill);
                i=stmt.executeUpdate();
                if(i>0)
                {
                    String message="Added Successfully";
                    RequestDispatcher rd = request.getRequestDispatcher("jobSeeker.jsp?message="+message+"&name="+name+"&username="+username);
                    rd.forward(request, response);
                }
            }
            catch(Exception e)
            {}
        } 
    }

}