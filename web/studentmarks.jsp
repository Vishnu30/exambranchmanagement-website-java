<%-- 
    Document   : studentmarks
    Created on : 10 Oct, 2016, 8:24:55 PM
    Author     : vishnu bajpai
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MEMORANDUM</title>
   <style type="text/css">
        #heading{
            background-color: #009900;
                width: 600px;
                height: 60px;
                margin: 0px auto 0px auto;
            }
            .head1{
                background-color: #ffffff;
                color: #00cc00;
               height: 40px;
               width: 400px;
               margin: 50px auto 0px 60px;
               padding-left: 60px;
               padding-top: 5px;
                position: relative;
               top: 10px;
               left: 5px;
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
                background-color: #663300;
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
                color:maroon;
            }
            
           h3{
                margin-left: 500px;
                padding-bottom: 10px;
                color: #996600;
            }
            .s1{
                margin-left: 400px;
            }
            .s2{
                margin-left: 400px;
            }
            .s3{
                margin-left: 400px;
            }
            .t1{
                margin-right: 90px;
            }
            .t2{
             margin-right: 40px;
            }
            .t3{
            margin-right: 145px;
            }
            .form1{
                width: 450px;
                margin-left: 150px;
                background-color: #ffcc33;
            }
            .b1{
                margin-top: 10px;
                margin-left: 400px;
            }
            .table1{
                margin-left: 300px;
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
            <img  class="image1" src="images/5.jpg" />
            </div>
             <h2 class="inform">WELCOME to Exam Branch Management System..........</h2>
            <h3>MEMORANDUM OF MARKS</h3>
           <%
            String a =request.getParameter("n1");
            String b=request.getParameter("n2");
            String c=request.getParameter("n3");
            %>
            <p class='s1'><span class="t1">Examination:</span><%=a%></p>
            <p class='s2'><span class="t2">HALL TICKET NO:</span><%=b%></p>
            <p class='s3'><span class="t3">Name:</span><%=c%></p>
            <form action="studentmarkssave.jsp" class="form1">
            <table widht="400" cellpadding="10" cellspacing="5" bgbolor="#ffff99" class="table1">
                <thead>
                    <tr>
                        <th>Subject Code</th>
                        <th>Subject Title</th>
                        <th>Internal Marks</th>
                        <th>End Exam</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><input type="text" name="n1"/></td>       
                        <td><input type="text" name="n2"/></td>
                        <td><input type="text" name="n3"/></td>
                        <td><input type="text" name="n4"/></td>
                    </tr>
                    <tr>
                        <td><input type="text" name="m1"/></td>
                        <td><input type="text" name="m2"/></td>
                        <td><input type="text" name="m3"/></td>
                        <td><input type="text" name="m4"/></td>
                    </tr>
                    <tr>
                        <td><input type="text" name="a1"/></td>
                        <td><input type="text" name="a2"/></td>
                        <td><input type="text" name="a3"/></td>
                        <td><input type="text" name="a4"/></td>
                    </tr>
                    <tr>
                        <td><input type="text" name="b1"/></td>
                        <td><input type="text" name="b2"/></td>
                        <td><input type="text" name="b3"/></td>
                        <td><input type="text" name="b4"/></td>
                    </tr>
                    <tr>
                        <td><input type="text" name="c1"/></td>
                        <td><input type="text" name="c2"/></td>
                        <td><input type="text" name="c3"/></td>
                        <td><input type="text" name="c4"/></td>
                    </tr>
                </tbody>
            </table>
                <input type="submit" value="SAVE" name="submit" class="b1" />
            </form>
    </body> 
         
    
</html>