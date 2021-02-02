<%-- 
    Document   : index
    Created on : 2 февр. 2021 г., 14:01:45
    Author     : gxufh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
  </head>
  <body>
    <h1>JSP content!</h1>
    
    <% out.print("word"); %>
    
    <%= "word" %>
    
    <%out.print("word");%>
    
    <%! public String message() {
        return "Method output";
    } %>
    
    <%= message()%>
    
    <% for(int i = 0; i < 10; i++){ %>
    <p>Some parameter<%= i%></p>
    <% }%>
    
    <%@page import="java.util.Date, org.obrii.mit.dp2021.toloshnyi.dp2021project.DemoData" %>
    <%-- <% out.print(new DemoData(1, "Myro", "Tolo").toString()) %> --%>
   
    <form action="forward.jsp" method="post">
      <input type="hidden" name="title" value="forwarded page">
      <input type="submit" value="Forward">
    </form>
  </body>
</html>
