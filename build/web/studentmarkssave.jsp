<%-- 
    Document   : studentmarkssave
    Created on : 10 Oct, 2016, 10:13:55 PM
    Author     : vishnu bajpai
--%>
<%@taglib uri= "http://java.sun.com/jsp/jstl/core"   prefix="c" %>
<%@taglib  uri= "http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MEMO SAVING</title>
    </head>
    <body>
        <c:set var="htno" value="${param.n1}"/>
 
 <sql:setDataSource var="dbcon"  driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/students" user="root" password=""/>
<sql:update dataSource="${dbcon}"  var="count"> 
    <sql:param value="${param.n1}"/>
    <sql:param value="${param.n2}"/>
    <sql:param value="${param.n3}"/>
    <sql:param value="${param.n4}"/>
    INSERT INTO studentmaarks VALUES(?,?,?,?)
</sql:update>
    <sql:update dataSource="${dbcon}"  var="count1"> 
    <sql:param value="${param.a1}"/>
    <sql:param value="${param.a2}"/>
    <sql:param value="${param.a3}"/>
    <sql:param value="${param.a4}"/>
  INSERT INTO studentmarks VALUES(?,?,?,?)
    </sql:update>
  <sql:update dataSource="${dbcon}"  var="count2"> 
    <sql:param value="${param.b1}"/>
    <sql:param value="${param.b2}"/>
    <sql:param value="${param.b3}"/>
    <sql:param value="${param.b4}"/>
   INSERT INTO studentmarks VALUES(?,?,?,?)
  </sql:update>
   <sql:update dataSource="${dbcon}"  var="count3"> 
    <sql:param value="${param.c1}"/>
    <sql:param value="${param.c2}"/>
    <sql:param value="${param.c3}"/>
    <sql:param value="${param.c4}"/>
   INSERT INTO studentmarks VALUES(?,?,?,?)
   </sql:update>
   <sql:update dataSource="${dbcon}"  var="count4"> 
     <sql:param value="${param.m1}"/>
    <sql:param value="${param.m2}"/>
    <sql:param value="${param.m3}"/>
    <sql:param value="${param.m4}"/>
    INSERT into studentmarks VALUES(?,?,?,?)
   </sql:update>
<c:redirect url="studentmemo.html"></c:redirect>
    </body>
</html>
    