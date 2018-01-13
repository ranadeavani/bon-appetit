<%-- 
    Document   : logout
    Created on : Nov 26, 2017, 5:05:05 PM
    Author     : user
--%>

<%
session.setAttribute("username", null);
session.invalidate();
response.sendRedirect("index.jsp");
%>

