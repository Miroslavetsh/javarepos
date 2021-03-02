<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Update</title>
  </head>
  <body>
    <h1>Update data!</h1>

    <form action="<%=request.getContextPath()%>/form" method="post">
      <input type="hidden" name="id" value="<%=request.getParameter("id")%>"/>

      <%if (request.getParameter("patreon").equals("patreon")) {%>
      isPatreon<input type="checkbox" name="patreon" checked value="patreon"/>
      <%} else {%>
      isPatreon<input type="checkbox" name="patreon" value="patreon"/>
      <%}%>
      Name:<input type="text" name="name" value="<%=request.getParameter("name")%>">
      Age:<input type="text" name="age" value="<%=request.getParameter("age")%>">
      Email:<input type="email" name="email" value="<%=request.getParameter("email")%>">
      <div>
        Subscribed:
        <%if (request.getParameter("subscribed").equals("on")) {%>
        on<input type="radio" name="subscribed" value="on" checked>
        off<input type="radio" name="subscribed" value="off">
        <%} else {%>
        on<input type="radio" name="subscribed" value="on">
        off<input type="radio" name="subscribed" value="off" checked>
        <%}%>

      </div>

      <div>
        Notification:
        <%if (request.getParameter("notification").equals("on")) {%>
        on<input type="radio" name="notification" value="on" checked>
        off<input type="radio" name="notification" value="off">
        <%} else {%>
        on<input type="radio" name="notification" value="on">
        off<input type="radio" name="notification" value="off" checked>
        <%}%>
      </div>
      Likes:<input type="text" name="likes" value="<%=request.getParameter("likes")%>">
      Dislikes:<input type="text" name="dislikes" value="<%=request.getParameter("dislikes")%>">
      Comment:<textarea type="text" maxlength="80" name="comment"><%=request.getParameter("comment")%></textarea>

      <input type="submit" value="update">
    </form>

  </body>
</html>
