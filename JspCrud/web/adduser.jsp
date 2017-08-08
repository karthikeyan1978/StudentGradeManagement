<%-- 
    Document   : adduser
    Created on : Aug 7, 2017, 12:25:20 PM
    Author     : ASTUSER04
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="com.dao.UserDao"%>  
<jsp:useBean id="u" class="com.bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  

<%
    int i = UserDao.save(u);
    if (i > 0) {
        response.sendRedirect("adduser-success.jsp");
    } else {
        response.sendRedirect("adduser-error.jsp");
    }
%>  
