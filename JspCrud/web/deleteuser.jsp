<%-- 
    Document   : deleteuser
    Created on : Aug 7, 2017, 12:45:22 PM
    Author     : ASTUSER04
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="com.dao.UserDao"%>  
<jsp:useBean id="u" class="com.bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%
    UserDao.delete(u);
    response.sendRedirect("viewusers.jsp");
%>  