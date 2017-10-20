<%-- 
    Document   : students
    Created on : 9 Oct, 2016, 5:05:32 PM
    Author     : vishnu bajpai
--%>

<%@taglib uri= "http://java.sun.com/jsp/jstl/core"   prefix="c" %>
<%@taglib  uri= "http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADMIN PAGE->STUDENTs list</title>
    <style type="text/css">
            #heading{
                background-color: #660000;
                width: 700px;
                height: 60px;
                margin: 0px auto 0px auto;
            }
            .head1{
                background-color: #ffffff;
                color:  #993300;
               height: 40px;
               width: 500px;
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
                background-color: #66ffff;
                color: #6666ff;
            }
            a:visited{
                color: #003399;
                text-decoration: underline;
            }
            a:link{
                text-decoration: none;
            }
            a:active{
                color:magenta;
            }
            h3{
                padding-left: 500px;
                padding-bottom: 10px;
                color: #ff9900;
            }
            .table1{
                margin-left: 300px;
            }
        </style>
    </head>
    <body>
        <div id="heading">
            <h2 class="head1">EXAM  BRANCH MANAGEMENT SYSTEM</h2>
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
             <h3>Students List</h3>
        <sql:setDataSource var="dbcon"  driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/students" user="root" password=""/>
    <sql:query dataSource="${dbcon}" var="result"> 
       select *from studentsave
    </sql:query>
       <table border="2" class='table1'>
           <thead>
               <tr>
                   <th><b>HALL TICKET NO.</b></th>
                   <th><b>NAME</b></th>
                   <th><b>YEAR</b></th>
                   <th><b>SEMESTER</b></th>
                   <th><b>BRANCH</b></th>
                   <th><b>STATUS</b></th>
               </tr>
           </thead>
           <tbody>
               <c:forEach var="row" items="${result.rows}">
               <tr>
                   <td style='color: #999900' style='text-align: center'>${row.htno}</td>
                   <td style='color: #999900' style='text-align: center'>${row.name}</td>
                   <td style='color: #999900' style='text-align: center'>${row.year}</td>
                   <td style='color: #999900' style='text-align: center'>${row.sem}</td>
                   <td style='color: #999900' style='text-align: center'>${row.branch}</td>
                   <td style='color: #999900' style='text-align: center'>${row.status}</td>
               </tr>
               </c:forEach>
           </tbody>
       </table>
    </body>
</html>
