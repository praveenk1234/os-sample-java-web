<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
 
<html>
   <head>
      <title>JINSERT Operation</title>
   </head>
   
   <body>
      <sql:setDataSource 
         var = "snapshot" 
         driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://172.30.1.142:3306/test_db"
         user = "test_user"  
         password = "test_user"/>
      <sql:update dataSource = "${snapshot}" var = "result">
         INSERT INTO `user` VALUES ('123', 'test', 'test', '2015-05-04', 'Nam', 'manhduydl@gmail.com', '0962491151', 'hochiminh', '2');
      </sql:update>
 
      <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from user;
      </sql:query>
 
      <table border = "1" width = "100%">
         <tr>
            <th>Emp ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Age</th>
         </tr>
         
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row.id}"/></td>
               <td><c:out value = "${row.first}"/></td>
               <td><c:out value = "${row.last}"/></td>
               <td><c:out value = "${row.age}"/></td>
            </tr>
         </c:forEach>
      </table>
 
   </body>
</html>
