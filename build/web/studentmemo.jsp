<%-- 
    Document   : studentmemo
    Created on : 9 Oct, 2016, 3:51:48 PM
    Author     : vishnu bajpai
--%>
<%@ page import="javax.sql.*,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>STUDENT MEMO JSP...></title>
        <style type="text/css">
        #heading{
                background-color: #660000;
                width: 600px;
                height: 60px;
                margin: 0px auto 0px auto;
            }
            .head1{
                background-color: #ffffff;
                color:  #993300;
               height: 40px;
               width: 400px;
               margin: 50px auto 0px 60px;
               padding-left: 60px;
                 position: relative;
               top: 10px;
               left: 5px;
               padding-top: 2px;
            }
           
            ul{
                width: 600px;
                padding-bottom:10px;
                padding-top: 10px;
                margin: 0px auto 0px auto;
                border-top: 2px solid #0066ff;
                border-bottom: 1px solid #0066ff;  
            }
            li{
                display: inline;
                margin-left: 40px;
                 font-family: cursive;
                font-style: italic;
            }
            
            .image1{
                width: 800px;
                height: 400px;
                margin: 60px 0px auto 40px;
            }
            .image{
                background-color: #9999ff;
                width: 900px;
                height: 500px;
                margin: 0px auto 0px auto;
            }
            .inform{
                color: #990099;
                font-style: oblique;
            }
             a:hover{
                color: #6666ff;
            }
            a:visited{
                color: #330066;
                text-decoration: underline;
            }
            a:link{
                text-decoration: none;
            }
            a:active{
                color:magenta;
            }
            h3{
                margin-left: 500px;
                padding-bottom: 10px;
                color: #009900;
            }
           
            .table1{
                background-color: #6666ff;
                width: 200px;
                 margin-left: 500px;
            }
            </style>
    </head>
    <body>
        <div id="heading">
            <h2 class="head1">WELCOME ADMIN!</h2>
        </div><br>
            <ul >
                <li><a href="homepage.html" >HOME</a></li>
                <li><a href="studentmemo.html">MEMOS</a></li>
                <li><a href="students.jsp">STUDENTS</a></li>
                <li><a href="admin.html">LOGOUT</a></li>
            </ul><br><br>
            <div class="image">
            <img  class="image1" src="images/office.jpg" />
            </div>
            <h2 class="inform">WELCOME to Exam Branch Management System..........</h2>
            <h3>students list</h3>
            <%
        String a =request.getParameter("name");
        String b=request.getParameter("year");
          String c =request.getParameter("branch");
        String d=request.getParameter("sem");
        
           Class.forName("com.mysql.jdbc.Driver");
           System.out.println("connecting to databse......");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost/students", "root", "");
           System.out.println("creating statement......");
           Statement st=con.createStatement();
           ResultSet rs=st.executeQuery("select *from studentsave where name='"+a+"' and year='"+b+"' and branch='"+c+"' and semester='"+d+"'");
           if(!rs.next()){
               out.println("sorry could not find student");
           }
           else{
       %>
      <div class="table1">
     <table  widht="400" class="table"  cellspacing="5" >
           <thead>
               <tr>
                   <th>HAll Ticket no.</th>
                   <th>Name</th>
               </tr>
           </thead>
           <tbody>
                 <tr> 
                 <td><form action="studentmarks.jsp" method="post">
                             <input type="hidden" name="n1" value="<%=rs.getString(5)%> Branch <%=rs.getString(4)%> Year <%=rs.getString(6)%> Semester"/>
                             <input type="hidden" name="n2" value="<%=rs.getString(1)%>"/>
                             <input type="hidden" name="n3" value="<%=rs.getString(2)%>"/>
                             <input type="submit" value="<%=rs.getString(1)%>" name="submit" />
                           </form>
                        </td>
                   <td style="text-transform: capitalize"><%=rs.getString(2)%></td>
              </tr>
              <%}%>
           </tbody>
       </table>
       </div>
    </body>
</html>