<%@page import="org.obrii.mit.dp2021.toloshnyi.toloshnyilab3.data.Data"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <!-- Meta -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">

    <!-- Title -->
    <title>Home</title>
  </head>
  <body>
    <%List<Data> dataList = (List<Data>) request.getAttribute("data");%>

    <div class="page">		
      <div class="container">

        <h1>ADMIN PANEL</h1>

        <%for (Data data : dataList) {%>
        <div>
          <%=data.getId()%>
        </div>
        <div>
          <%=data.getPatreon()%>
        </div>

        <div>
          <%=data.getName()%>
        </div>

        <div>
          <%=data.getAge()%>
        </div>

        <div>
          <%=data.getEmail()%>
        </div>

        <div>
          <%=data.getSubscribed()%>
        </div>

        <div>
          <%if (data.getNotification() == "on") {%>
          <%="Ada<div>"%>
          <div class="yes"></div>
          <%} else {%>
          <div class="no"></div>
          <%}%>
        </div>

        <div>
          <%=data.getLikes()%>
        </div>

        <div>
          <%=data.getDislikes()%>
        </div>

        <div>
          <%=data.getComment()%>
        </div>

        <form action="update.jsp" method="post">
          <input type="hidden" name="id" value="<%=data.getId()%>"/>
          <input type="hidden" name="patreon" value="<%=data.getPatreon()%>"/>
          <input type="hidden" name="name" value="<%=data.getName()%>"/>
          <input type="hidden" name="age" value="<%=data.getAge()%>"/>
          <input type="hidden" name="email" value="<%=data.getEmail()%>"/>
          <input type="hidden" name="subscribed" value="<%=data.getSubscribed()%>"/>
          <input type="hidden" name="notification" value="<%=data.getNotification()%>"/>
          <input type="hidden" name="likes" value="<%=data.getLikes()%>"/>
          <input type="hidden" name="dislikes" value="<%=data.getDislikes()%>"/>
          <input type="hidden" name="comment" value="<%=data.getComment()%>"/>
          
          <input type="submit" value="Refactor">
        </form>
          
        <form action="<%=request.getContextPath()%>/form" method="get">
          <input type="hidden" name="id" value="<%=data.getId()%>"/>
          
          <input type="submit" value="Delete">
        </form>
        <%}%>

        <form action="form.jsp">
          <input type="submit" value="Go">
        </form>

      </div>
    </div>
  </body>
</html>
