<%-- 
    Document   : editform
    Created on : Aug 7, 2017, 12:42:24 PM
    Author     : ASTUSER04
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>  
<html>  
    <head>  
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
        <title>Edit Form</title>  
    </head>  
    <body>  
        <%@page import="com.dao.UserDao,com.bean.User"%>  

        <%
            String id = request.getParameter("id");
            User u = UserDao.getRecordById(Integer.parseInt(id));
        %>  

        <h1>Edit Form</h1>  
        <form action="edituser.jsp" method="post">  
            <input type="hidden" name="id" value="<%=u.getId()%>"/>  
            <table>  
                <tr><td>Name:</td><td>  
                        <input type="text" name="sname" value="<%= u.getSname()%>"/></td></tr>  
                <tr><td>Tamil</td><td>  
                        <input type="text" name="tamil" value="<%= u.getTamil()%>"/></td></tr>  
                <tr><td>English</td><td>  
                        <input type="text" name="english" value="<%= u.getEnglish()%>"/></td></tr>
                <tr><td>Maths</td><td>  
                        <input type="text" name="maths" value="<%= u.getMaths()%>"/></td></tr>
                <tr><td>Science</td><td>  
                        <input type="text" name="science" value="<%= u.getScience()%>"/></td></tr>
                <tr><td>Moral</td><td>  
                        <input type="text" name="moral" value="<%= u.getMoral()%>"/></td></tr>
                <tr><td>Total</td><td>  
                        <input type="text" name="total" value="<%= u.getTotal()%>" readonly="readonly" onfocus="this.blur();" style="background-color:grey; color:Lime;"/></td></tr>
                <tr><td>Average</td><td>  
                        <input type="text" name="average" value="<%= u.getAverage()%>" readonly="readonly" onfocus="this.blur();" style="background-color:grey; color:Lime;"/></td></tr>
                <tr><td>Grade</td><td>  
                        <input type="text" name="grade" value="<%= u.getGrade()%>" readonly="readonly" onfocus="this.blur();" style="background-color:grey; color:Lime;"/></td></tr>
                
                
                <tr><td colspan="2"><input type="submit" value="Edit User"/></td></tr>  
            </table>  
        </form>  

    </body>  
</html>  
