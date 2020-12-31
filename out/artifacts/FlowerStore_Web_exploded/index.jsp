<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@  page  session="false"  %>
<!doctype html>
<!--[if IE 7 ]>    <html lang="en-gb" class="isie ie7 oldie no-js"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en-gb" class="isie ie8 oldie no-js"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en-gb" class="isie ie9 no-js"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en-gb" class="no-js">
<!--<![endif]-->
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <!--[if lt IE 9]>
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <![endif]-->
  <title>Home</title>
  <meta name="description" content="">
  <meta name="author" content="">
  <!--[if lt IE 9]>
  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->
  <!--[if lte IE 8]>
  <script type="text/javascript" src="http://explorercanvas.googlecode.com/svn/trunk/excanvas.js"></script>
  <![endif]-->
  <link rel="stylesheet" href="css/bootstrap.min.css" />
  <link rel="stylesheet" type="text/css" href="css/isotope.css" media="screen" />
  <link rel="stylesheet" href="js/fancybox/jquery.fancybox.css" type="text/css" media="screen" />
  <link href="css/animate.css" rel="stylesheet" media="screen">
  <link href="flexslider/flexslider.css" rel="stylesheet" />
  <link href="js/owl-carousel/owl.carousel.css" rel="stylesheet">
  <link rel="stylesheet" href="css/styles.css" />
  <!-- Font Awesome -->
  <link href="font/css/font-awesome.min.css" rel="stylesheet">
</head>

<body>
<header class="header">
  <div class="container">
    <nav class="navbar navbar-inverse" role="navigation">
      <div class="navbar-header">
        <button type="button" id="nav-toggle" class="navbar-toggle" data-toggle="collapse" data-target="#main-nav"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
       <a href="#" class="navbar-brand scroll-top logo  animated bounceInLeft"><b><i>花的海洋</i></b></a> </div>
      <!--  <a href="#" class="navbar-brand scroll-top logo  animated bounceInLeft"><img src="https://s2.ax1x.com/2019/12/12/Qyx2yn.png" alt="" /></a> </div>-->
      <!--/.navbar-header-->
      <div id="main-nav" class="collapse navbar-collapse">
        <ul class="nav navbar-nav" id="mainNav">
<%--          <li class="active" id="firstLink"><a href="#home" class="scroll-link">主页</a></li>--%>
<%--          <li><a href="#services" class="scroll-link">热销</a></li>--%>
          <li><a href="#aboutUs" class="scroll-link">关于系统</a></li>
          <li><a href="#contactUs" class="scroll-link">留言</a></li>
<%--          <li><a href="#work" class="scroll-link">花语大全</a></li>--%>
          <li><a href="Register.jsp" class="scroll-link">注册</a></li>
          <li><a href="Login.jsp" class="scroll-link">登录</a></li>
        </ul>
      </div>
      <!--/.navbar-collapse-->
    </nav>
    <!--/.navbar-->
  </div>
  <!--/.container-->
</header>
<!--/.header-->
<div id="#top"></div>
<section id="home">
  <div class="banner-container">
    <!-- Slider -->
    <div id="main-slider" class="flexslider">
      <ul class="slides">
        <li>
          <img src="images/小花1.jpg" alt="" />
          <div class="flex-caption container">
            <h3>花店管理系统</h3>
              </div>
        </li>
        <li>

         <img src=".images/小花1.jpg" alt="" />
          <div class="flex-caption container">
           <h3>让我们进入花店管理系统吧
           </h3>

          </div>
        </li>
      </ul>
    </div>
    <!-- end slider -->
  </div>
</section>
<section id="aboutUs">
  <div class="container">

    <div class="heading wow fadeInUp animated" data-wow-duration="1000ms" data-wow-delay="300ms">
      <div class="row">
        <div class="text-center col-sm-8 col-sm-offset-2">
          <h2>简介</h2>
          <p>本系统进去之后可以选购鲜花，快点为你心爱的人购买一束鲜花吧</p>
        </div>
      </div>
    </div>
    <div class="row feature design">


    </div>

  </div>

</section>
  <section id="contactUs" class="contact-parlex">
    <div class="parlex-back">
      <div class="container">
        <div class="heading wow fadeInUp animated" data-wow-duration="1000ms" data-wow-delay="300ms">
          <div class="row">
            <div class="text-center col-sm-8 col-sm-offset-2">
              <h2>留言</h2>
              <p>留言，让我们给好的服务大家</p>
            </div>
          </div>
        </div>
        <div class="row mrgn30">
          </div>
          <div class="text-center col-sm-8 col-sm-offset-2">
            <!--NOTE: Update your email Id in "contact_me.php" file in order to receive emails from your contact form-->
            <form action="MessageServlet" method="post" >
              <div class="control-group">
                <div class="controls">
                  <input type="text" name="cus_username" class="form-control"
                         placeholder="Your Name" id="name" required
                         data-validation-required-message="Please enter your name" />
                  <p class="help-block"></p>
                </div>
              </div>
              <div class="control-group">
                <div class="controls">
		<textarea name="content" rows="10" cols="100" class="form-control"
                  placeholder="Message" id="message" required
                  data-validation-required-message="Please enter your message" minlength="5"
                  data-validation-minlength-message="Min 5 characters"
                  maxlength="999" style="resize:none"></textarea>
                </div>
              </div>
              <div id="success"> </div> <!-- For success/fail messages -->
              <button type="submit" class="btn btn-primary pull-right">Send</button><br />
            </form>
          </div>
        </div>
      </div>
      <!--/.container-->
    </div>
  </section>
  <!--/.page-section-->
  <a href="#top" class="topHome"><i class="fa fa-chevron-up fa-2x"></i></a>

  <!--[if lte IE 8]><script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script><![endif]-->
  <script src="js/modernizr-latest.js"></script>
  <script src="js/jquery-1.8.2.min.js" type="text/javascript"></script>
  <script src="js/bootstrap.min.js" type="text/javascript"></script>
  <script src="js/jquery.isotope.min.js" type="text/javascript"></script>
  <script src="js/fancybox/jquery.fancybox.pack.js" type="text/javascript"></script>
  <script src="js/jquery.nav.js" type="text/javascript"></script>
  <script src="js/jquery.fittext.js"></script>
  <script src="js/waypoints.js"></script>
  <script src="flexslider/jquery.flexslider.js"></script>
  <script src="contact/jqBootstrapValidation.js"></script>
  <script src="contact/contact_me.js"></script>
  <script src="js/custom.js" type="text/javascript"></script>
  <script src="js/owl-carousel/owl.carousel.js"></script>
</body>
</html>
