<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Meta -->
    <meta charset="UTF-8" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta
        name="viewport"
        content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"
        />

    <!-- SEO -->
    <meta property="og:title" content="MiTube | Creating" />
    <meta
        property="og:description"
        content="Welcome to MiTube creating panel, where you can add users to the store"
        />
    <meta property="og:locale" content="ua_UA" />
    <meta property="og:image" content="<%=request.getContextPath()%>/assets/img/icons/youtube.svg"/>
    <meta property="og:site_name" content="mitube.com" />
    <meta name="google" content="notranslate" />

    <!-- Favicon -->
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/assets/img/icons/youtube.svg" type="image/svg" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;700&display=swap" rel="stylesheet" />

    <!-- Style -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/style.min.css" >

    <!-- Title -->
    <title>MiTube | Creating</title>
  </head>

  <body>
    <div class="page">
      <header class="header">
        <div class="container">

          <div class="header__inner">
            <div class="header__logo">
              <picture><source srcset="<%=request.getContextPath()%>/assets/img/logo/logo.svg" type="image/webp"><img src="<%=request.getContextPath()%>/assets/img/logo/logo.svg" alt="MiTube Logo" class="logo" /></picture>
            </div>
          </div>

        </div>
      </header>

      <div class="preview">
        <div class="container">

          <div class="preview__inner">

          </div>

        </div>
      </div>

      <section class="form form--mod">
        <div class="container">

          <div class="form__inner">
            <h2 class="form__title">Create the data</h2>

            <form action="<%=request.getContextPath()%>/" method="post" class="form__form">
              <input type="hidden" name="id" value="0"/>
              <div class="form__column">
                <div class="form__group">
                  <input class="form__input" type="text" required name="name">
                  <label>Name</label>
                </div>

                <div class="form__group">
                  <input class="form__input" type="text" required name="email">
                  <label>Email</label>
                </div>

                <div class="form__set">
                  <div class="form__group">
                    <input class="form__input" type="number" required name="age">
                    <label>Age</label>
                  </div>

                  <div class="form__group form__group--check">
                    <input class="form__input" type="checkbox" id="patreon" name="patreon" value="patreon">
                    <label for="patreon">Patreon</label>
                  </div>
                </div>

              </div>

              <div class="form__column">

                <div class="form__set">
                  <div class="form__group">
                    <input class="form__input" type="number" required name="likes">
                    <label>Likes</label>
                  </div>

                  <div class="form__group">
                    <input class="form__input" type="number" required name="dislikes">
                    <label>Dislikes</label>
                  </div>
                </div>

                <div class="form__group form__group--textarea">
                  <textarea class="form__input form__input--txt" maxlength="40" placeholder="Short comment from person..." name="comment"></textarea>
                </div>

              </div>

              <div class="form__column">

                <div class="form__group form__group--radio">
                  <label>Notifications</label>

                  <input class="form__input" type="radio" id="notifications-on" name="notification" value="on">
                  <label for="notifications-on">On</label>

                  <input class="form__input" type="radio" id="notifications-off" name="notification" value="off" checked>
                  <label for="notifications-off">Off</label>
                </div>

                <div class="form__group form__group--radio">
                  <label>Subscribes</label>

                  <input class="form__input" type="radio" name="subscribed" value="yes" id="subscribed-yes">
                  <label for="subscribed-yes">Yes</label>

                  <input class="form__input" type="radio" name="subscribed" value="no" id="subscribed-no" checked>
                  <label for="subscribed-no">No</label>
                </div>

                <div class="form__group form__group--button">
                  <button class="button" type="submit">Create</button>
                </div>

              </div>
            </form>
          </div>

        </div>
      </section>
    </div>

    <script src="<%=request.getContextPath()%>/assets/js/script.min.js"></script>
  </body>
</html>
