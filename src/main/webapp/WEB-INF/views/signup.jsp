<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Mundostra</title>
        <spring:url value="/resources/vendor/bootstrap/css/bootstrap.min.css" var="bootstrapCss" />
        <spring:url value="/resources/css/style.min.css" var="styleCss" />
        <spring:url value="/resources/vendor/font-awesome/css/font-awesome.min.css" var="fontAwesomeCss" />
        <spring:url value="/resources/vendor/magnific-popup/magnific-popup.css" var="magnificPopupCss" />

        <!-- Custom fonts for this template -->
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>


        <!-- Custom styles for this template -->
        <link href="${magnificPopupCss}" rel="stylesheet">
        <link href="${bootstrapCss}" rel="stylesheet">
        <link href="${styleCss}" rel="stylesheet">
        <link href="${fontAwesomeCss}" rel="stylesheet">

    </head>
    <body>
        <div id="login-box">
          <div class="left">
            <h1>Sign up</h1>

            <input type="text" name="firstname" placeholder="First Name" />
             <input type="text" name="lastname" placeholder="Last Name" />
            <input type="text" name="email" placeholder="E-mail" />
            <input type="text" name="number" placeholder="Number" />
            <!--<input type="password" name="password" placeholder="Password" />
            <input type="password" name="password2" placeholder="Retype password" /> -->

            <input type="submit" name="signup_submit" value="Sign me up" />
          </div>

          <div class="right">
            <span class="loginwith">Sign in with<br />social network</span>

            <button class="social-signin facebook">Log in with facebook</button>
            <button class="social-signin google">Log in with Google+</button>
          </div>
          <div class="or">OR</div>
        </div>
    </body>