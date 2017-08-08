<%-- 
    Document   : viewusers
    Created on : Aug 7, 2017, 12:38:30 PM
    Author     : ASTUSER04
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html> 

<html>  
    <head>  
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
        <title>View Users</title>  
    </head>  
    <body>  

        <%@page import="com.dao.UserDao,com.bean.*,java.util.*"%>  
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

        <h1>Users List</h1>  

        <%
            List<User> list = UserDao.getAllRecords();
            request.setAttribute("list", list);
        %>  

        <table border="1" width="90%">  
            <tr><th>Id</th><th>Name</th><th>Tamil</th><th>English</th>  
                <th>Maths</th><th>Science</th><th>Moral</th><th>Total</th><th>Average</th><th>Grade</th><th>Edit</th><th>Delete</th></tr>  
            <c:forEach items="${list}" var="u">  
                <tr><td>${u.getId()}</td><td>${u.getSname()}</td><td>${u.getTamil()}</td>  
                    <td>${u.getEnglish()}</td><td>${u.getMaths()}</td><td>${u.getScience()}</td>
                    <td>${u.getMoral()}</td><td>${u.getTotal()}</td><td>${u.getAverage()}</td><td>${u.getGrade()}</td>
                    <td><a href="editform.jsp?id=${u.getId()}">Edit</a></td>  
                    <td><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></td></tr>  
            </c:forEach>  
        </table>  
        <br/><a href="adduserform.jsp">Add New User</a>  

    </body>  
</html>  
