<%-- 
    Document   : index
    Created on : 19 февр. 2021 г., 22:37:25
    Author     : gxufh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <!-- Meta -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">

    <!-- Styles -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/style.min.css">

    <!-- Title -->
    <title>OOP Tutorial - Main | by MiTo</title>
  </head>
  <body>
    <div class="page">		
      <div class="container">

        <section class="intro">

          <div class="intro__row">
            <div class="intro__titles">
              <h2 class="suptitle">story about</h2>
              <h1 class="title">OOP</h1>
            </div>

            <div class="intro__uml">
              <picture><source srcset="<%=request.getContextPath()%>/assets/img/uml.svg" type="image/webp"><img src="<%=request.getContextPath()%>/assets/img/uml.svg" alt=""></picture>
            </div>
          </div>

          <div class="intro__row">
            <div class="intro__year">
              2021
            </div>

            <form action="<%=request.getContextPath()%>/form" method="get">
              <button class="button" type="submit">open form</button>
            </form>
          </div>

        </section>

      </div>		
    </div>
  </body>
</html>
