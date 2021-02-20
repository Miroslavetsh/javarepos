<%-- 
    Document   : form
    Created on : 19 февр. 2021 г., 23:07:28
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
    <title>OOP Tutorial - Form | by MiTo</title>
  </head>
  <body>
    <div class="page">

      <div class="container">

        <section class="intro">

          <div class="intro__row intro__row--col">
            <div class="intro__titles">
              <h2 class="suptitle">form to</h2>
              <h1 class="title">fill</h1>
            </div>

            <div class="intro__form">
              <form class="form" action="<%=request.getContextPath()%>/form" method="post">
                <input class="form__input" required type="text" name="name" placeholder="Enter your name right here">

                <div class="form__block">
                  <p>Polimorphism</p>

                  <div class="form__radios">
                    <label class="form__label">
                      <input class="form__input" type="radio" name="message" value="parent" checked>
                      <span>parent</span>
                    </label>

                    <label class="form__label">
                      <input class="form__input" type="radio" name="message" value="overriden">
                      <span>overriden</span>
                    </label>
                  </div>
                </div>

                <div class="form__block">
                  <p>Overriding</p>
                  <div class="form__radios">
                    <label class="form__label">
                      <input class="form__input" type="radio" name="interface" value="old" checked>
                      <span>old</span>
                    </label>

                    <label class="form__label">
                      <input class="form__input" type="radio" name="interface" value="new">
                      <span>new</span>
                    </label>
                  </div>
                </div>


                <button class="button form__button" type="submit">submit</button>
              </form>
            </div>
          </div>

          <div class="intro__row">
            <div class="intro__year">
              2021
            </div>
          </div>

        </section>

      </div>

    </div>
  </body>
</html>
