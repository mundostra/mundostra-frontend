<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Mundostra</title>


    <!-- Loading all Resources -->
    <spring:url value="/resources/vendor/bootstrap/css/bootstrap.min.css" var="bootstrapCss" />
    <spring:url value="/resources/vendor/font-awesome/css/font-awesome.min.css" var="fontAwesomeCss" />
    <spring:url value="/resources/vendor/magnific-popup/magnific-popup.css" var="magnificPopupCss" />
    <spring:url value="/resources/css/creative.min.css" var="creativeCss" />
    <spring:url value="/resources/img/portfolio/fullsize/1.jpg" var="oneFJpg" />
    <spring:url value="/resources/img/portfolio/thumbnails/1.jpg" var="oneTJpg" />
    <spring:url value="/resources/img/portfolio/fullsize/2.jpg" var="twoFJpg" />
    <spring:url value="/resources/img/portfolio/thumbnails/2.jpg" var="twoTJpg" />
    <spring:url value="/resources/img/portfolio/fullsize/3.jpg" var="threeFJpg" />
    <spring:url value="/resources/img/portfolio/thumbnails/3.jpg" var="threeTJpg" />
    <spring:url value="/resources/img/portfolio/fullsize/4.jpg" var="fourFJpg" />
    <spring:url value="/resources/img/portfolio/thumbnails/4.jpg" var="fourTJpg" />
    <spring:url value="/resources/img/portfolio/fullsize/5.jpg" var="fiveFJpg" />
    <spring:url value="/resources/img/portfolio/thumbnails/5.jpg" var="fiveTJpg" />
    <spring:url value="/resources/img/portfolio/fullsize/6.jpg" var="sixFJpg" />
    <spring:url value="/resources/img/portfolio/thumbnails/6.jpg" var="sixTJpg" />
    <spring:url value="/resources/vendor/jquery/jquery.min.js" var="jqueryJs" />
    <spring:url value="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js" var="bootstrapBundleJs" />
    <spring:url value="/resources/vendor/jquery-easing/jquery.easing.min.js" var="jqueryEasingJs" />
    <spring:url value="/resources/vendor/scrollreveal/scrollreveal.min.js" var="scrollRevealJs" />
    <spring:url value="/resources/vendor/magnific-popup/jquery.magnific-popup.min.js" var="magnificPopupJs" />
    <spring:url value="/resources/js/creative.min.js" var="creativeJs" />


    <!-- Bootstrap core CSS -->
    <link href="${bootstrapCss}" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="${fontAwesomeCss}" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>

    <!-- Plugin CSS -->
    <link href="${magnificPopupCss}" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${creativeCss}" rel="stylesheet">

  </head>

  <body id="page-top">

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">Mundostra</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#about">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#services">Services</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#portfolio">Itenary</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#contact">Contact</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <header class="masthead text-center text-white d-flex">
      <div class="container my-auto">
        <div class="row">
          <div class="col-lg-10 mx-auto">
            <h1 class="text-uppercase">
              <strong>Travel around the world with Mundostra</strong>
            </h1>
            <hr>
            
          </div>
          <div class="col-lg-8 mx-auto">
            
            <a class="btn btn-primary btn-xl js-scroll-trigger" href="#about">Find Out More</a>
          </div>
        </div>
      </div>
    </header>

    <section class="bg-primary" id="about">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 mx-auto text-center">
            <h2 class="section-heading text-white">We've got what you need!</h2>
            <hr class="light my-4">
            <p class="text-faded mb-4">Introduction</p>
            <a class="btn btn-light btn-xl js-scroll-trigger" href="#services">Get Started!</a>
          </div>
        </div>
      </div>
    </section>

    <section id="services">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading">At Your Service</h2>
            <hr class="my-4">
          </div>
        </div>
      </div>
      <div class="container">
        <div class="row">
          <div class="col-lg-3 col-md-6 text-center">
            <div class="service-box mt-5 mx-auto">
              <i class="fa fa-4x fa-diamond text-primary mb-3 sr-icons"></i>
              <h3 class="mb-3">Customized Itenary</h3>
              <p class="text-muted mb-0">Based on your requirements we'll create a customized itenary for you.</p>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 text-center">
            <div class="service-box mt-5 mx-auto">
              <i class="fa fa-4x fa-paper-plane text-primary mb-3 sr-icons"></i>
              <h3 class="mb-3">Travel</h3>
              <p class="text-muted mb-0">Best deals for travel</p>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 text-center">
            <div class="service-box mt-5 mx-auto">
              <i class="fa fa-4x fa-newspaper-o text-primary mb-3 sr-icons"></i>
              <h3 class="mb-3">Stay</h3>
              <p class="text-muted mb-0">Best deals for stay</p>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 text-center">
            <div class="service-box mt-5 mx-auto">
              <i class="fa fa-4x fa-heart text-primary mb-3 sr-icons"></i>
              <h3 class="mb-3">Service 3</h3>
              <p class="text-muted mb-0"></p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="p-0" id="portfolio">
      <div class="container-fluid p-0">
        <div class="row no-gutters popup-gallery">
          <div class="col-lg-4 col-sm-6">
            <a class="portfolio-box" href="${oneFJpg}">
              <img class="img-fluid" src="${oneTJpg}" alt="">
              <div class="portfolio-box-caption">
                <div class="portfolio-box-caption-content">
                  <div class="project-category text-faded">
                    INDIA
                  </div>
                  <div class="project-name">
                    Travel India
                  </div>
                </div>
              </div>
            </a>
          </div>
          <div class="col-lg-4 col-sm-6">
            <a class="portfolio-box" href="${twoFJpg}">
              <img class="img-fluid" src="${twoTJpg}" alt="">
              <div class="portfolio-box-caption">
                <div class="portfolio-box-caption-content">
                  <div class="project-category text-faded">
                    USA
                  </div>
                  <div class="project-name">
                    Travel USA
                  </div>
                </div>
              </div>
            </a>
          </div>
          <div class="col-lg-4 col-sm-6">
            <a class="portfolio-box" href="${threeFJpg}">
              <img class="img-fluid" src="${threeTJpg}" alt="">
              <div class="portfolio-box-caption">
                <div class="portfolio-box-caption-content">
                  <div class="project-category text-faded">
                    China
                  </div>
                  <div class="project-name">
                   Travel China
                  </div>
                </div>
              </div>
            </a>
          </div>
          <div class="col-lg-4 col-sm-6">
            <a class="portfolio-box" href="${fourFJpg}">
              <img class="img-fluid" src="${fourTJpg}" alt="">
              <div class="portfolio-box-caption">
                <div class="portfolio-box-caption-content">
                  <div class="project-category text-faded">
                    Europe
                  </div>
                  <div class="project-name">
                    Travel Europe
                  </div>
                </div>
              </div>
            </a>
          </div>
          <div class="col-lg-4 col-sm-6">
            <a class="portfolio-box" href="${fiveFJpg}">
              <img class="img-fluid" src="${fiveTJpg}" alt="">
              <div class="portfolio-box-caption">
                <div class="portfolio-box-caption-content">
                  <div class="project-category text-faded">
                    Australia
                  </div>
                  <div class="project-name">
                    Travel Austrailia
                  </div>
                </div>
              </div>
            </a>
          </div>
          <div class="col-lg-4 col-sm-6">
            <a class="portfolio-box" href="${sixFJpg}">
              <img class="img-fluid" src="${sixTJpg}" alt="">
              <div class="portfolio-box-caption">
                <div class="portfolio-box-caption-content">
                  <div class="project-category text-faded">
                    More..
                  </div>
                  <div class="project-name">
                    Intenaries
                  </div>
                </div>
              </div>
            </a>
          </div>
        </div>
      </div>
    </section>

    <section id="contact">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 mx-auto text-center">
            <h2 class="section-heading">Let's Get In Touch!</h2>
            <hr class="my-4">
            <p class="mb-5">Have questions? Give us a call or send us an email and we will get back to you as soon as possible!</p>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-4 ml-auto text-center">
            <i class="fa fa-phone fa-3x mb-3 text-primary sr-contact"></i>
            <p>123-456-6789</p>
          </div>
          <div class="col-lg-4 mr-auto text-center">
            <i class="fa fa-envelope-o fa-3x mb-3 text-primary sr-contact"></i>
            <p>
              <a href="mailto:your-email@your-domain.com">info@mundostra.com</a>
            </p>
          </div>
        </div>
      </div>
    </section>
    <footer class="footer" id="mainFooter">
      <div class="container">
        <span> &copy; Mundostra 2018</span>
      </div>
    </footer>
    <!-- Bootstrap core JavaScript -->
    <script src="${jqueryJs}"></script>
    <script src="${bootstrapBundleJs}"></script>

    <!-- Plugin JavaScript -->
    <script src="${jqueryEasingJs}"></script>
    <script src="${scrollRevealJs}"></script>
    <script src="${magnificPopupJs}"></script>

    <!-- Custom scripts for this template -->
    <script src="${creativeJs}"></script>
  </body>

</html>
