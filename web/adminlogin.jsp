<%-- 
    Document   : adminlogin.jsp
    Created on : 9 Oct, 2016, 11:36:49 AM
    Author     : vishnu bajpai
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@ page import="javax.sql.*,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADMIN LOGIN CONFIRMATION...</title>
    </head>
    <body>
        <%
        String a =request.getParameter("n1");
        String b=request.getParameter("n2");
       
        
        try{
                
           Class.forName("com.mysql.jdbc.Driver");
           System.out.println("connecting to databse......");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost/admin", "root", "");
           System.out.println("creating statement......");
           Statement st=con.createStatement();
           ResultSet rs=st.executeQuery("select *from login where username='"+a+"' and password='"+b+"'");
           if(rs.next()){
            response.sendRedirect("adminlogin.html");
           }
           else
           {
               response.getWriter().println("invalid user");
           }
        }catch(Exception e)
        {}
       %>
    </body>
</html>
