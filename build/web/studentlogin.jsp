<%-- 
    Document   : studentlogin
    Created on : 11 Oct, 2016, 4:59:04 PM
    Author     : vishnu bajpai
--%>
<%@ page import="javax.sql.*,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>STUDENT LOGIN</title>
    <style type="text/css">
            #heading{
                background-color: #000099;
                width: 700px;
                height: 60px;
                margin: 0px auto 0px auto;
            }
            .head1{
                background-color: #ffffff;
                color:  #0099ff;
               height: 40px;
               width: 400px;
               margin: 50px auto 0px 40px;
               padding-left: 150px;
               position: relative;
               top: 10px;
               left: 5px;
            }
           
            .ul{
                 width: 600px;
                padding-bottom:10px;
                padding-top: 10px;
                margin: 0px auto 0px auto;
                border-top: 2px solid #0066ff;
                border-bottom: 1px solid #0066ff; 
            }
            a{
                margin-left: 40px;
                font-family: cursive;
                font-style: italic;
            }
            
            .image1{
                width: 700px;
                height: 400px;
                margin: 60px 0px auto 80px;
            }
            .image{
                background-color: #00ffff;
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
                color: burlywood;
            }
           
           .b1{
	  -moz-user-select: text;
	   background: none;
	   border: none;
	   color: blue;
	   cursor: pointer;
	   font-size: 1em;
	   padding-left: 5px;
	   text-align: center;
           color:  #0033cc;
           margin-left: 32px;
           font-style: italic;
           text-transform: capitalize;
           }
 
           .b1:hover{
	    background-color: #66ffff;
                color: #6666ff;
          }
            .b2{
	  -moz-user-select: text;
	   background: none;
           text-transform: capitalize;
	   border: none;
	   color: blue;
	   cursor: pointer;
	   font-size: 1em;
	   padding-left:5px;
	   text-align: center;
           color:  #0033cc;
           margin-left: 32px;
            font-style: italic;
           }
 
           .b2:hover {
	    background-color: #66ffff;
                color: #6666ff;
          }
        </style>
    </head>
    <body>
         <%
            String a =request.getParameter("htno");
            String b=request.getParameter("pass");
         
           Class.forName("com.mysql.jdbc.Driver");
           System.out.println("connecting to databse......");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost/students", "root", "");
           System.out.println("creating statement......");
           Statement st=con.createStatement();
           ResultSet rs=st.executeQuery("select *from studentsave where htno='"+a+"' and password='"+b+"'");
           if(!rs.next()){
               out.println("invalid user");
           }
           else{%>
        <div id="heading">
            <h2 class="head1"> WELCOME  <b><%=rs.getString(2)%></b></h2>
        </div><br>
            <div class='ul'>
                <a href="homepage.html" class="link1">HOME</a><br>
               <a href="student.html" class="link2">LOG OUT</a>
                <form action="studentmarksshow.jsp" method="post">
                             <input type="hidden" name="s1" value="<%=rs.getString(1)%>"/>
                             <input type="hidden" name="s2" value="<%=rs.getString(2)%>"/>
                            <input type="submit" value="VIEW STUDENT  MARKS" name="submit" class='b1' />
                </form>
                <form action="studentmemoshow.jsp" method="post">
                             <input type="hidden" name="n1" value="<%=rs.getString(5)%> Branch <%=rs.getString(4)%> Year <%=rs.getString(6)%> Semester"/>
                             <input type="hidden" name="n2" value="<%=rs.getString(1)%>"/>
                             <input type="hidden" name="n3" value="<%=rs.getString(2)%>"/>
                            <input type="submit" value="VIEW MEMO" name="submit" class='b2' />
                </form>
            </div><br><br>
            <div class="image">
            <img  class="image1" src="images/poster.png" />
            </div>
            <h2 class="inform">WELCOME to Exam Branch Management System..........</h2>
            <%}%>
    </body>
</html>