<%-- 
    Document   : submit
    Created on : 5 февр. 2021 г., 10:24:40
    Author     : gxufh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>MiToProj | Submit</title>
  </head>
  <body>
    <%-- Import dependencies --%>
    <%@page import="java.util.Date, org.obrii.mit.dp2021.toloshnyi.dp2021project.LoginData" %>

    <div class="page">
      <h1 class="">Welcome To The Submit Page</h1>

      <div class=""><%= new Date()%></div>

      <div class="">Name: <%=request.getParameter("name")%></div>
      <div class="">Surname: <%=request.getParameter("surname")%></div>

      <div class="">Gender: <%
          String gender = request.getParameter("gender");
          if (gender != null) {
              out.print(gender);
          } else {
              out.print("No gender selected(");
          }
        %></div>

      <div class="">
        Language(-s):<br /> <% String[] languages = request.getParameterValues("language");
            if (languages != null) {
                for (int languageIndex = 0; languageIndex < languages.length; languageIndex++) {
                    out.print(languages[languageIndex]);
                    out.print("<br />");
                }
            } else {
                out.print("No languages selected(");
            }%>
      </div>

      <div class="">Country: <%
          String country = request.getParameter("countries");
          if (country != null) {
              out.print(country);
          } else {
              out.print("No country selected(");
          }
        %></div>

      <a class="" href="<%=request.getContextPath()%>">Return</a>
    </div>

  </body>
</html>
