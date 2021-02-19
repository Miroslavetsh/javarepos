<%-- 
    Document   : form
    Created on : 19 февр. 2021 г., 23:07:28
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
    
    <form action="<%=request.getContextPath()%>/form" method="post">
      <p>Overloaded</p>
      UserName: <input type="text" name="name">
      
      <p>Overriding</p>
      Parent<input type="radio" name="message" value="parent" checked>
      Overriden <input type="radio" name="message" value="overriden" checked>
      
      <p>Polimorphism</p>
      Old<input type="radio" name="interface" value="old" checked>
      New<input type="radio" name="interface" value="new" checked>      
      
      <input type="submit" value="Confirm">
    </form>
  </body>
</html>
