<%@page import="org.obrii.mit.dp2021.toloshnyi.toloshnyilab3.data.Data"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Meta -->
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    
    <!-- SEO -->
    <meta property="og:title" content="MiTube | Admin Panel">
    <meta
        property="og:description"
        content="Welcome to MiTube admin panel, where you can see every it's users"
        >
    <meta property="og:locale" content="ua_UA">
    <meta property="og:image" content="<%=request.getContextPath()%>/assets/img/icons/youtube.svg">
    <meta property="og:site_name" content="mitube.com">
    <meta name="google" content="notranslate">

    <!-- Favicon -->
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/assets/img/icons/youtube.svg" type="image/svg" >
    
    <!-- Style -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/style.min.css" >
    
    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;700&display=swap" rel="stylesheet" >

    <!-- Title -->
    <title>MiTube | Admin Panel</title>

  </head>
  <body>
    <%List<Data> dataList = (List<Data>) request.getAttribute("data");%>

    <div class="page">
      <header class="header header--mod">
        <div class="container">

          <div class="header__inner">
            <div class="header__logo">
              <picture><source srcset="<%=request.getContextPath()%>/assets/img/logo/logo.svg" type="image/webp"><img src="<%=request.getContextPath()%>/assets/img/logo/logo.svg" alt="MiTube Logo" class="logo" ></picture>
            </div>

            <div class="header__search">
              <input type="text" id="userNamesFilterInput" class="header__input" placeholder="Start enter the name to filter...">
              <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
              <path fill-rule="evenodd" clip-rule="evenodd" d="M9.71356 10.2136C9.01862 10.7087 8.16833 11 7.25 11C4.90279 11 3 9.09721 3 6.75C3 4.40279 4.90279 2.5 7.25 2.5C9.59721 2.5 11.5 4.40279 11.5 6.75C11.5 7.92361 11.0243 8.98611 10.2552 9.7552L13.2539 12.7539C13.3914 12.8914 13.3881 13.1119 13.25 13.25C13.111 13.389 12.8898 13.3898 12.7539 13.2539L9.71356 10.2136ZM7.25 10.5C9.32107 10.5 11 8.82107 11 6.75C11 4.67893 9.32107 3 7.25 3C5.17893 3 3.5 4.67893 3.5 6.75C3.5 8.82107 5.17893 10.5 7.25 10.5Z" fill="#AAAAAA">
              </svg>
            </div>
          </div>

        </div>
      </header>

      <div class="preview">
        <div class="container">

          <form action="<%=request.getContextPath()%>/form.jsp" class="preview__inner">

            <button type="submit" class="preview__button button button--inv">
              Add to the table
            </button>

          </form>

        </div>
      </div>

      <section class="panel">
        <div class="container">

          <div class="panel__inner">
            <div class="panel__column panel__column--static">
              <div class="panel__cell">
                <h1 class="panel__title">Role</h1>
              </div>

              <div class="panel__cell">
                <h2 class="panel__subtitle">Id</h2>
              </div>

              <div class="panel__cell">
                <h2 class="panel__subtitle">Name</h2>
              </div>

              <div class="panel__cell">
                <h2 class="panel__subtitle">Age</h2>
              </div>

              <div class="panel__cell">
                <h2 class="panel__subtitle">Email</h2>
              </div>

              <div class="panel__cell">
                <h2 class="panel__subtitle">Subscribed</h2>
              </div>

              <div class="panel__cell">
                <h2 class="panel__subtitle">Notification</h2>
              </div>

              <div class="panel__cell">
                <div class="panel__icon">
                  <picture><source srcset="<%=request.getContextPath()%>/assets/img/icons/like.svg" type="image/webp"><img src="<%=request.getContextPath()%>/assets/img/icons/like.svg" alt=""></picture>
                </div>
              </div>

              <div class="panel__cell">
                <div class="panel__icon">
                  <picture><source srcset="<%=request.getContextPath()%>/assets/img/icons/dislike.svg" type="image/webp"><img src="<%=request.getContextPath()%>/assets/img/icons/dislike.svg" alt=""></picture>
                </div>
              </div>

              <div class="panel__cell">
                <h2 class="panel__subtitle">Comment</h2>
              </div>

              <div class="panel__cell">
                <h2 class="panel__alabtn panel__alabtn--inv">Refactor</h2>
              </div>

              <div class="panel__cell">
                <h2 class="panel__alabtn">Remove</h2>
              </div>

            </div>

            <%for (Data data : dataList) {%>
            <div class="panel__column">
              <div class="panel__cell">
                <%if (data.getPatreon() == null) {%>
                    <p class="panel__title">User</p>
                <%} else {%>
                    <p class="panel__title">Patreon</p>
                <%}%>
              </div>

              <div class="panel__cell">
                <p class="panel__subtitle"><%=data.getId()%></p>
              </div>

              <div class="panel__cell">
                <p class="panel__subtitle" data-filter="name"><%=data.getName()%></p>
              </div>

              <div class="panel__cell">
                <p class="panel__subtitle"><%=data.getAge()%></p>
              </div>

              <div class="panel__cell">
                <p class="panel__subtitle"><%=data.getEmail()%></p>
              </div>

              <div class="panel__cell">
                <%if (data.getSubscribed().equals("no")) {%>
                <p class="panel__radio"></p>
                <%} else {%>
                <p class="panel__radio panel__radio--on"></p>
                <%}%>
              </div>

              <div class="panel__cell">
                <p class="panel__subtitle"><%=data.getNotification()%></p>
              </div>

              <div class="panel__cell">
                <p class="panel__subtitle"><%=data.getLikes()%></p>
              </div>

              <div class="panel__cell">
                <p class="panel__subtitle"><%=data.getDislikes()%></p>
              </div>

              <div class="panel__cell">
                <p class="panel__comment"><%=data.getComment()%></p>
              </div>

              <form action="<%=request.getContextPath()%>/update.jsp" method="post" class="panel__cell">
                <input type="hidden" name="id" value="<%=data.getId()%>">
                <input type="hidden" name="patreon" value="<%=data.getPatreon()%>">
                <input type="hidden" name="name" value="<%=data.getName()%>">
                <input type="hidden" name="age" value="<%=data.getAge()%>">
                <input type="hidden" name="email" value="<%=data.getEmail()%>">
                <input type="hidden" name="subscribed" value="<%=data.getSubscribed()%>">
                <input type="hidden" name="notification" value="<%=data.getNotification()%>">
                <input type="hidden" name="likes" value="<%=data.getLikes()%>">
                <input type="hidden" name="dislikes" value="<%=data.getDislikes()%>">
                <input type="hidden" name="comment" value="<%=data.getComment()%>">

                <button type="submit" class="panel__icon">
                  <svg height="484pt" viewBox="-15 -15 484.00019 484" width="484pt" xmlns="http://www.w3.org/2000/svg"><path d="m401.648438 18.234375c-24.394532-24.351563-63.898438-24.351563-88.292969 0l-22.101563 22.222656-235.269531 235.144531-.5.503907c-.121094.121093-.121094.25-.25.25-.25.375-.625.746093-.871094 1.121093 0 .125-.128906.125-.128906.25-.25.375-.371094.625-.625 1-.121094.125-.121094.246094-.246094.375-.125.375-.25.625-.378906 1 0 .121094-.121094.121094-.121094.25l-52.199219 156.96875c-1.53125 4.46875-.367187 9.417969 2.996094 12.734376 2.363282 2.332031 5.550782 3.636718 8.867188 3.625 1.355468-.023438 2.699218-.234376 3.996094-.625l156.847656-52.324219c.121094 0 .121094 0 .25-.121094.394531-.117187.773437-.285156 1.121094-.503906.097656-.011719.183593-.054688.253906-.121094.371094-.25.871094-.503906 1.246094-.753906.371093-.246094.75-.621094 1.125-.871094.125-.128906.246093-.128906.246093-.25.128907-.125.378907-.246094.503907-.5l257.371093-257.371094c24.351563-24.394531 24.351563-63.898437 0-88.289062zm-232.273438 353.148437-86.914062-86.910156 217.535156-217.535156 86.914062 86.910156zm-99.15625-63.808593 75.929688 75.925781-114.015626 37.960938zm347.664062-184.820313-13.238281 13.363282-86.917969-86.917969 13.367188-13.359375c14.621094-14.609375 38.320312-14.609375 52.945312 0l33.964844 33.964844c14.511719 14.6875 14.457032 38.332031-.121094 52.949218zm0 0"></svg>
                </button>
              </form>

              <form action="<%=request.getContextPath()%>/form" method="get" class="panel__cell">
                <input type="hidden" name="id" value="<%=data.getId()%>">

                <button type="submit" class="panel__icon panel__icon--trash">
                  <svg id="Layer_1" enable-background="new 0 0 512 512" height="512" viewBox="0 0 512 512" width="512" xmlns="http://www.w3.org/2000/svg"><g><path d="m424 64h-88v-16c0-26.467-21.533-48-48-48h-64c-26.467 0-48 21.533-48 48v16h-88c-22.056 0-40 17.944-40 40v56c0 8.836 7.164 16 16 16h8.744l13.823 290.283c1.221 25.636 22.281 45.717 47.945 45.717h242.976c25.665 0 46.725-20.081 47.945-45.717l13.823-290.283h8.744c8.836 0 16-7.164 16-16v-56c0-22.056-17.944-40-40-40zm-216-16c0-8.822 7.178-16 16-16h64c8.822 0 16 7.178 16 16v16h-96zm-128 56c0-4.411 3.589-8 8-8h336c4.411 0 8 3.589 8 8v40c-4.931 0-331.567 0-352 0zm313.469 360.761c-.407 8.545-7.427 15.239-15.981 15.239h-242.976c-8.555 0-15.575-6.694-15.981-15.239l-13.751-288.761h302.44z"><path d="m256 448c8.836 0 16-7.164 16-16v-208c0-8.836-7.164-16-16-16s-16 7.164-16 16v208c0 8.836 7.163 16 16 16z"><path d="m336 448c8.836 0 16-7.164 16-16v-208c0-8.836-7.164-16-16-16s-16 7.164-16 16v208c0 8.836 7.163 16 16 16z"><path d="m176 448c8.836 0 16-7.164 16-16v-208c0-8.836-7.164-16-16-16s-16 7.164-16 16v208c0 8.836 7.163 16 16 16z"></g></svg>
                </button>
              </form>

            </div>
            <%}%>

          </div>
        </div>

        <script src="<%=request.getContextPath()%>/assets/js/script.min.js">
        </script>
        </body>
        </html>
