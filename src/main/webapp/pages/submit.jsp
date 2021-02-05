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
    <%@page import="java.util.Date, java.util.List, org.obrii.mit.dp2021.toloshnyi.dp2021project.User"%>
    
    <% User user = (User) request.getAttribute("user");%>
    
    <div class="page">
      <h1 class="">Welcome To The Submit Page</h1>

      <div class=""><%= new Date()%></div>

      <div class="">Name: <%=user.getName()%></div>
      <div class="">Surname: <%=user.getSurname()%></div>

      <div class="">Gender: <%
          String gender = user.getGender();
          if (gender != null) {
              out.print(gender);
          } else {
              out.print("No gender selected(");
          }
        %></div>

      <div class="">
        Language(-s):<br /> <% List<String> languages = user.getLanguages();
            if (languages != null) {
                    out.print(languages);
            } else {
                out.print("No languages selected(");
            }%>
      </div>

      <div class="">Country: <%
          String country = user.getCountry();
          if (country != null) {
              out.print(country);
          } else {
              out.print("No country selected(");
          }
        %></div>

        <form action="<%=request.getContextPath()%>">
          <button type="submit">Return</button>
        </form>
    </div>

  </body>
</html>
