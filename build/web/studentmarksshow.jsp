<%-- 
    Document   : studentmarksshow
    Created on : 11 Oct, 2016, 5:03:45 PM
    Author     : vishnu bajpai
--%>
<%@ page import="javax.sql.*,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SUBJECT MARKS</title>
    <style type="text/css">
            #heading{
                background-color: #ffff00;
                width: 700px;
                height: 60px;
                margin: 0px auto 0px auto;
            }
            .head1{
                background-color: #ffffff;
                color: #ff9900;
               height: 40px;
               width: 400px;
               margin: 50px auto 0px 30px;
               padding-left: 150px;
                position: relative;
               top: 10px;
               left: 5px;
            }
           
            .ul{
               width: 500px;
                padding-bottom:10px;
                padding-top: 10px;
                margin: 0px auto 0px auto;
                border-top: 2px solid #0066ff;
                border-bottom: 1px solid #0066ff; 
                
            }
            a{
                display:inline;
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
                color:  #0033cc;
                padding-left: 10px;
                margin-left: 150px;
                text-transform: fullsize-kana;
            }
             .s1{
                margin-left: 200px;
            }
            .in2{
               
                border-color: #cc9900;
                margin-left: 190px;
                padding-left: 30px;
               
            }
            .b2{
                margin-left: 300px;
                background-color: #666666;
                color:  #ffffff;
            }
                 .b1{
	  -moz-user-select: text;
	   background: none;
	   border: none;
	   color: blue;
	   cursor: pointer;
	   font-size: 1em;
	   padding-left:5px;
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
        </style>
         </head>
    <body>
           <%
            String a =request.getParameter("s1");
            String b=request.getParameter("s2");
         
           Class.forName("com.mysql.jdbc.Driver");
           System.out.println("connecting to databse......");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost/students", "root", "");
           System.out.println("creating statement......");
           Statement st=con.createStatement();
           ResultSet rs=st.executeQuery("select  *from studentsave where htno='"+a+"' and name='"+b+"' ");
           if(rs.next()){%>
        <div id="heading">
            <h2 class="head1">WELCOME <b></b></h2>
        </div><br>
            <div class='ul' >
                <a href="homepage.html" >HOME</a><br>
                <a href="student.html">LOG OUT</a>
                <form action="studentmemoshow.jsp" method="post">
                 <input type="hidden" name="n1" value="<%=rs.getString(5)%> Branch <%=rs.getString(4)%> Year  <%=rs.getString(6)%> Semester"/>
                 <input type="hidden" name="n2" value="<%=rs.getString(1)%>"/>
                 <input type="hidden" name="n3" value="<%=rs.getString(2)%>"/>
                 <input type="submit" value="View Memo" name="submit" class='b1' />
                        </form>
            </div><br><br>
            <div class="image">
            <img  class="image1" src="images/poster.png" />
            </div>
            <h2 class="inform">WELCOME to Exam Branch Management System..........</h2>
           
            <form action="subjectmarks.jsp" method="post" class="form1">
                  <input type="hidden" name="s1" value="<%=rs.getString(1)%>"/>
                  <input type="hidden" name="s2" value="<%=rs.getString(2)%>"/>
                   <p class="in2">select Subject:<select name="sub" style="color:chocolate" required="required" class="s1" >
                   <option  value="null">select the subject...</option>
                    <% ResultSet rs1=st.executeQuery("select  *from studentmarks");
                   while(rs1.next()){%>
                   <option value="<%=rs1.getString(2)%>"><%=rs1.getString(2)%></option>
                    <%}%>
                    </select><input type="submit" value="submit" name="submit" class="b2" /></p>
            </form>
                           
                     <%}%> 
    </body>
</html>
 
           