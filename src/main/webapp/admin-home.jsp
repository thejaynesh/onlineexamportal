<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ page import="javax.portlet.PortletPreferences" %>
<%@ taglib uri='http://java.sun.com/portlet_2_0' prefix='portlet' %>
<portlet:defineObjects />
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin </title>
<style>
.admindash-table{
margin-top:15%;
margin-left:20%;
}
td{
border:1px solid #406c77;
 border-radius:5px;
 text-align:center;
}
a{
text-decoration:none;
}
</style>
</head>
<body>
<table class="admindash-table" cellspacing="15">
<tr>
<td><a href="/onlineexamportal/manage-topic"><img src="<%=renderRequest.getContextPath()%>/managetest.png"><br>Manage Tests</a></td>
<td><a href="manage-user.html"><img src="/images/manageuser.png"><br>Manage Users</a></td>
<td><a href="admin-result.html"><img src="/images/viewresult.png"><br>View Results</a></td>
</tr>
</table>
</body>
</html>