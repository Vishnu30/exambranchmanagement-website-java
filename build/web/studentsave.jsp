<%-- 
    Document   : studentsave
    Created on : 9 Oct, 2016, 7:43:34 PM
    Author     : vishnu bajpai
--%>
<%@ page import="javax.sql.*,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
       String a =request.getParameter("htno");
        String b=request.getParameter("name");
          String c=request.getParameter("pass");
            String d =request.getParameter("year");
              String e =request.getParameter("branch");
                String f =request.getParameter("sem");
                  String g =request.getParameter("email");
                    String h =request.getParameter("phone");
       
        
        try{
                
           Class.forName("com.mysql.jdbc.Driver");
           System.out.println("connecting to databse......");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost/students", "root", "");
           System.out.println("creating statement......");
           Statement st=con.createStatement();
           st.executeUpdate("insert into studentsave values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"','received')");
           response.sendRedirect("student.html");
        }catch(Exception e1)
        {}
       %>
    </body>
</html>
