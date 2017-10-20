<%-- 
    Document   : studentmemoshow
    Created on : 11 Oct, 2016, 5:03:31 PM
    Author     : vishnu bajpai
--%>
<%@taglib uri= "http://java.sun.com/jsp/jstl/core"   prefix="c" %>
<%@taglib  uri= "http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SHOWING MEMO......</title>
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
           
            .ul{
                width: 700px;
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
            margin-right: 140px;
            }
            .table1{
                background-color:  #ff6600;
                width: 400px;
                margin: 10px auto 0px 200px;
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
        <div id="heading">
            <h2 class="head1">WELCOME <%=request.getParameter("n3")%></h2>
        </div><br>
            <div class='ul' >
                <a href="homepage.html" >HOME</a><br>
                <a href="student.html">LOG OUT</a>
                <a href="studentmarksshow.html">   
                        <form action="studentmarksshow.jsp" method="post">
                          <input type="hidden" name="s1" value="${param.n2}"/>
                          <input type="hidden" name="s2" value="${param.n3}"/>
                        <input type="submit" value="VIEW STUDENT MARKS" name="submit" class='b1' />
            </div><br><br>
            <div class="image">
            <img  class="image1" src="images/office.jpg" />
            </div>
            <h2 class="inform">WELCOME to Exam Branch Management System..........</h2>
            <h3>MEMORANDUM OF MARKS</h3>
            <sql:setDataSource var="dbcon"  driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/students" user="root" password=""/>
            <sql:query dataSource="${dbcon}" var="result">
        
            select *from studentmarks
             </sql:query>
             <c:set var="a" value="${param.n1}"/>
             <c:set var="b" value="${param.n2}"/>
             <c:set var="c"  value="${param.n3}"/>
             <p class='s1'><span class="t1">Examination:</span><c:out value="${a}"/></p>
            <p class='s2'><span class="t2">HALL TICKET NO:</span><c:out value="${b}"/></p>
            <p class='s3'><span class="t3">Name:</span><c:out value="${c}"/></p>
            
       <div class="table1">
       <table  border="2" width="800" cellpadding="10" cellspacing="5" bgbolor="#ffcc33">
           <thead>
               <tr>
                   <th>SUBJECT CODE</th>
                   <th>SUBJECT TITLE</th>
                   <th>INTERNAL MARKS</th>
                   <th>EXTERNAL MARKS</th>
                   <th>TOTAL</th>
                   <th>RESULT</th>
               </tr>
           </thead>
           <tbody>
                <c:forEach var="row" items="${result.rows}">
               <tr>
                   <td><c:out value="${row.subcode}" /></td>
                   <td><c:out value="${row.subtitle}" /></td>
                   <td><c:out value="${row.internalmarks}" /></td>
                   <td><c:out value="${row.endexam}" /></td>
                   <td>
                    <c:set var="ie" value="${row.internalmarks}"  />
                    <c:set var="ee" value="${row.endexam}" />
                    <fmt:parseNumber var="i" type="number" value="${ie}" />
                    <fmt:parseNumber var="j" type="number" value="${ee}" />
                    <c:out value="${i+j}" /></td>
                   <td>
                       <c:set var="sum" value="${i+j}"/>
                       <c:if test="${sum>40}">
                       <c:out value="pass"/> 
                       </c:if>
                       <c:if test="${sum<40}">
                               <c:out value="fail"/>
                           </c:if>
                      
                   </td>
               </tr>
                </c:forEach>
           </tbody>
       </table>
       </div>
           
    </body>
</html>
 