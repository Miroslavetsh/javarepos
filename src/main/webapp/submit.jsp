<%-- 
    Document   : submit
    Created on : 19 февр. 2021 г., 23:07:37
    Author     : gxufh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
  </head>
  <body>
    
    <% List<String> messages = (List<String>) request.getAttribute("messages");%>
    
    <h1>Messages:</h1>
    <% for(String message : messages) { %>
        <p><%=message%></p>
    <%}%>
    
    <form action="<%=request.getContextPath()%>/form" method="get">
      <input type="submit" value="Return to Form">
    </form>
      
    <form action="<%=request.getContextPath()%>" method="get">
      <input type="submit" value="Go Home">
    </form>
    
  </body>
</html>
