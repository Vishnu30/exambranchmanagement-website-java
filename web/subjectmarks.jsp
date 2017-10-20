<%-- 
    Document   : subjectmarks
    Created on : 11 Oct, 2016, 10:39:50 PM
    Author     : vishnu bajpai
--%>
<%@ page import="javax.sql.*,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SHOWING SUNJECT MARKS...</title>
   <style type="text/css">
            #heading{
                background-color:purple;
                width: 700px;
                height: 60px;
                margin: 0px auto 0px auto;
            }
            .head1{
                background-color: #ffffff ;
                color: #ff00ff;
               height: 40px;
               width: 400px;
               margin: 50px auto 0px 30px;
               padding-left: 150px;
               position: relative;
               top: 10px;
               left: 5px;
               padding-top: 5px;
            }
           
            ul{
               width: 500px;
                padding-bottom:10px;
                padding-top: 10px;
                margin: 0px auto 0px auto;
                border-top: 2px solid #0066ff;
                border-bottom: 1px solid #0066ff; 
            }
            li{
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
                padding: 5px;
                margin-left: 150px;
                text-transform: fullsize-kana;
            }
             .s1{
                margin-left: 95px;
            }
            .in2{
               
                border-color: #cc9900;
                margin-left: 20px;
                padding-left: 30px;
               
            }
            .b2{
                margin-left: 20px;
                background-color: #666666;
                color:  #ffffff;
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
             String c=request.getParameter("sub"); ResultSet rs=st.executeQuery("select *from studentsave where htno='"+a+"' and name='"+b+"' ");
           if(rs.next()){%>
        <div id="heading">
            <h2 class="head1">WELCOME <b></b></h2>
        </div><br>
            <ul >
                <li><a href="homepage.html" >HOME</a></li>
                <li><a href="student.html">LOG OUT</a></li><br><br>
                <li><form action="studentmemoshow.jsp" method="post">
                 <input type="hidden" name="n1" value="<c:out value="<%=rs.getString(5)%> Branch <%=rs.getString(4)%> Year  <%=rs.getString(6)%> Semester"/>
                 <input type="hidden" name="n2" value="<%=rs.getString(1)%>"/>
                 <input type="hidden" name="n3" value="<%=rs.getString(2)%>"/>
                 <input type="submit" value="VIEW MEMO" name="submit" class='b1' />
                        </form></li>
            </ul><br><br>
            <div class="image">
            <img  class="image1" src="images/imag2.jpg" />
            </div>
            <h2 class="inform">WELCOME to Exam Branch Management System..........</h2>
                 <% ResultSet rs1=st.executeQuery("select *from studentmarks where subtitle='"+c+"' ");
                  if(rs1.next()){%>
         
          
             <table border="1" width="400" cellspacing="10" cellpadding="5">
                 <thead>
                     <tr>
                         <th>Subject Title</th>
                         <th>Internal Marks</th>
                         <th>External Marks</th>
                         <th>Total</th>
                         <th>Result</th>
                     </tr>
                 </thead>
                 <tbody>
                     <tr> 
                         <td><%=rs1.getString(2)%></td>
                         <td><%=rs1.getString(3)%></td>
                         <td><%=rs1.getString(4)%></td>
                         <td><%=Integer.parseInt(rs1.getString(4))+Integer.parseInt(rs1.getString(3))%></td>
                         <td><% if((Integer.parseInt(rs1.getString(4))+Integer.parseInt(rs1.getString(3)))>40){ %>
                           <%="pass" %><%}else{%>
                         <%="fail"%><%}%></td>
                     </tr>
                 </tbody>
             </table>
<%}%>
           
                     <%}%> 
    </body>
</html>