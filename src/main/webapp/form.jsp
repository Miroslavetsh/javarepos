<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Form</title>
  </head>
  <body>
    <h1>Insert data!</h1>
    
    <form action="<%=request.getContextPath()%>/" method="post">
        <input type="hidden" name="id" value="0"/>
      
        isPatreon<input type="checkbox" name="patreon" value="patreon">
        Name:<input type="text" name="name">
        Age:<input type="text" name="age">
        Email:<input type="email" name="email">
        <div>
            Subscribed:
            off<input type="radio" name="subscribed" value="on">
            on<input type="radio" name="subscribed" value="off" checked>
        </div>
        
        <div>
            Notification:
            on<input type="radio" name="notification" value="on">
            off<input type="radio" name="notification" value="off" checked>
        </div>
        Likes:<input type="text" name="likes">
        Dislikes:<input type="text" name="dislikes">
        Comment:<textarea type="text" name="comment"></textarea>
        
        <input type="submit" value="save">
    </form>
        
  </body>
</html>
