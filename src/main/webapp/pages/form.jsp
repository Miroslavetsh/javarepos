<%-- 
    Document   : login
    Created on : 5 февр. 2021 г., 08:51:58
    Author     : gxufh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>MiToProj | Login</title>
  </head>
  <body>
    <%-- Import dependencies --%>
    <%@page import="java.util.Date" %>

    <div class="page">
      <h1 class="">Welcome To The Login Page</h1>

      <div class=""><%= new Date()%></div>

      <form class="" action="<%=request.getContextPath()%>/form" method="post">
        <input type="hidden" name="title" value="Submitted">

        <input type="text" name="name" placeholder="Enter Your name, pls" required>
        <input type="text" name="surname" placeholder="Enter Your surname, pls" required>

        <input type="radio" name="gender" value="Male" id="male"><label for="male">Male</label>
        <input type="radio" name="gender" value="Female" id="female"><label for="female">Female</label>

        <input type="checkbox" name="languages" value="English" id="english"><label for="english">English</label>
        <input type="checkbox" name="languages" value="Hindi" id="hindi"><label for="hindi">Hindi</label>
        <input type="checkbox" name="languages" value="Russian" id="russian"><label for="russian">Russian</label>

        <select class="" name="countries">
          <option selected disabled>Choose your country</option>
          <option value="Ukraine">Ukraine</option>
          <option value="Russia">Russia</option>
          <option value="Poland">Poland</option>
          <option value="Canada">Canada</option>
        </select>

        <button type="submit">Submit</button>
      </form>
    </div>

  </body>
</html>
