<%-- 
    Document   : index
    Created on : 19 февр. 2021 г., 22:37:25
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
    <h1>Hello World!</h1>
    
    <form action="<%=request.getContextPath()%>/form" method="get">
      <input type="submit" value="Go To Form">
    </form>
  </body>
</html>
