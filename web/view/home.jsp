<!DOCTYPE html>
<html>
<title>Task Scheduler</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
      integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="icon" href='<c:url value="/images/favicon.ico" />' type="image/x-icon">
<style>
  body, h1, h2, h3, h4, h5, h6 {
    font-family: "Raleway", sans-serif
  }

  body, html {
    height: 100%;
    line-height: 1.8;
  }

  /* Full height image header */
  .bgimg-1 {
    background-position: center;
    background-size: cover;
    background-image: url("/images/mac.jpg");
    min-height: 100%;
  }

  .w3-bar .w3-button {
    padding: 16px;
  }

</style>
<body>

<!-- Navbar (sit on top) -->
<div class="w3-top">
  <div class="w3-bar w3-white w3-card" id="myNavbar">
    <a href="#home" class="w3-bar-item w3-button w3-wide">Task Scheduler</a>
    <!-- Right-sided navbar links -->
    <div class="w3-right w3-hide-small">
      <a href="${pageContext.request.contextPath}/login" class="w3-bar-item w3-button"><i class="fas fa-user"></i>LOGIN</a>
      <a href="#about" class="w3-bar-item w3-button">ABOUT</a>
    </div>
    <!-- Hide right-floated links on small screens and replace them with a menu icon -->
    <a href="javascript:void(0)" class="w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium"
       onclick="w3_open()">
      <i class="fa fa-bars"></i>
    </a>
  </div>
</div>

<!-- Header with full-height image -->
<header class="bgimg-1 w3-display-container w3-grayscale-min" id="home">
  <div class="w3-display-left w3-text-white" style="padding:48px">
    <span class="w3-jumbo w3-hide-small">Get things in order with Task Scheduler</span><br>
    <span class="w3-large">Stop wasting valuable time thinking about your tasks, just write them down.</span>
    <p><a href="#registration"
          class="w3-button w3-white w3-padding-large w3-large w3-margin-top w3-opacity w3-hover-opacity-off">Get
      started</a></p>
  </div>
  <div class="w3-display-bottomleft w3-text-grey w3-large" style="padding:24px 48px">
    <a href="https://www.instagram.com/arimekishou"><i class="fa fa-instagram w3-hover-opacity"></i></a>
    <a href="https://twitter.com/arimekishou"><i class="fa fa-twitter w3-hover-opacity"></i></a>
  </div>

</header>

<!-- About Section -->
<div class="w3-container" style="padding:128px 16px" id="about">
  <h3 class="w3-center">ABOUT THE TASK SCHEDULER</h3>
  <p class="w3-center w3-large">Key features of our site</p>
  <div class="w3-row-padding w3-center" style="margin-top:64px">
    <div class="w3-quarter">
      <i class="fa fa-desktop w3-margin-bottom w3-jumbo w3-center"></i>
      <p class="w3-large">Responsive</p>
      <p>The task is very easy to set! Just remember to do it.</p>
    </div>
    <div class="w3-quarter">
      <i class="fa fa-thumb-tack w3-margin-bottom w3-jumbo"></i>
      <p class="w3-large">Passion</p>
      <p>After the first use, you won't need any other planners.</p>
    </div>
    <div class="w3-quarter">
      <i class="fa fa-diamond w3-margin-bottom w3-jumbo"></i>
      <p class="w3-large">Design</p>
      <p>User-friendly interface and communication.</p>
    </div>
    <div class="w3-quarter">
      <i class="fa fa-cog w3-margin-bottom w3-jumbo"></i>
      <p class="w3-large">Support</p>
      <p>If you have any problems, our support team will handle everything and help you.</p>
    </div>
  </div>
</div>

<!-- Promo Section-->
<div class="w3-container w3-light-grey" style="padding:128px 16px">
  <div class="w3-row-padding">
    <div class="w3-col m6">
      <h3>We know our responsibilities.</h3>
      <p>It's important to appreciate the time in your life.
        That's why we made this service for you and your time.<br>
        We will help you prioritize your tasks, teach you how to save time and not waste it on useless
        things.</p>
      <p><a href="#work" class="w3-button w3-black"><i class="fa fa-th" aria-hidden="true"></i> Create first task.</a></p>
    </div>
    <div class="w3-col m6">
      <img class="w3-image w3-round-large" src="/images/phone_buildings.jpg" alt="Buildings" width="700"
           height="394">
    </div>
  </div>
</div>


<!-- Registration Section -->
<div class="w3-container w3-#fbfbfd" style="padding:128px 16px" id="registration">
  <h3 class="w3-center">REGISTRATION</h3>
  <p class="w3-center w3-large">Let's get started:</p>
  <div style="margin-top:48px">
    <p><i class="fa fa-map-marker fa-fw w3-xxlarge w3-margin-right"></i> Minsk, Belarus</p>
    <p><i class="fa fa-envelope fa-fw w3-xxlarge w3-margin-right"> </i> Email: b.drozdov.vironit@vironit.ru</p>
    <br>
    <form method="post" action="/registration">
      <p><label>
        <input class="w3-input w3-border" type="text" placeholder="Name" required name="name">
      </label></p>
      <p><label>
        <input class="w3-input w3-border" type="password" placeholder="Password" required name="password">
      </label></p>
      <p><label>
        <input class="w3-input w3-border" type="email" placeholder="Email" required name="email">
      </label></p>
      <p><label>
        <input class="w3-input w3-border" type="role" placeholder="Role" required name="role">
      </label></p>
      <p>
        <button class="w3-button w3-black" type="submit" value="Submit">
          Registration
        </button>
      </p>
    </form>
    <!-- Image of location/map -->
    <img src="/images/map.jpg" class="w3-image w3-greyscale" style="width:100%;margin-top:48px">
  </div>
</div>

<!-- Footer -->
<footer class="w3-center w3-black w3-padding-64">
  <a href="#home" class="w3-button w3-light-grey"><i class="fa fa-arrow-up w3-margin-right"></i>To the top</a>
  <div class="w3-xlarge w3-section">
    <a href="https://www.instagram.com/arimekishou"><i class="fa fa-instagram w3-hover-opacity"></i></a>
    <a href="https://twitter.com/arimekishou"><i class="fa fa-twitter w3-hover-opacity"></i></a>
  </div>
  <p>Powered by <a href="https://github.com/arimekishou" title="github" target="_blank"
                   class="w3-hover-text-green">Boris Drozdov</a></p>
</footer>

<script>

  // Toggle between showing and hiding the sidebar when clicking the menu icon
  var mySidebar = document.getElementById("mySidebar");

  function w3_open() {
    if (mySidebar.style.display === 'block') {
      mySidebar.style.display = 'none';
    } else {
      mySidebar.style.display = 'block';
    }
  }

</script>

</body>
</html>