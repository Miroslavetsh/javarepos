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
    <title>MiToProj | Main</title>
  </head>
  <body>
    <%-- Import dependencies --%>
    <%@ page import="java.util.Date, org.obrii.mit.dp2021.toloshnyi.dp2021project.LoginData" %>

    <div class="page">
      <h1 class="">Welcome To The Main Page</h1>

      <div class=""><%= new Date()%></div>

      <div class=""><%= (new LoginData(1, "Myro", "Tolo").toString())%> </div>

      <form action="<%=request.getContextPath()%>/form" method="get">
        <button type="submit">Call of form</button>
      </form>
    </div>

  </body>
</html>
