<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Mundostra</title>

    <spring:url value="/resources/css/style.min.css" var="styleCss" />
    <spring:url value="/resources/vendor/font-awesome/css/font-awesome.min.css" var="fontAwesomeCss" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <!-- Custom styles for this template -->
    <link href="${styleCss}" rel="stylesheet">
    <link href="${fontAwesomeCss}" rel="stylesheet">


</head>
<body>
    <div class="container" id="login-box">
        <ul class="nav nav-pills nav-justified">
          <li class="active"><a data-toggle="pill" href="#signup">Sign Up</a></li>
          <li><a data-toggle="pill" href="#login">Log In</a></li>
        </ul>
        <div class="tab-content">
            <div id="signup" class="tab-pane fade in active">
                <br/>
                <h1>Sign Up</h1>
                <form action="/signup">
                    <div class="top-row">
                        <div class="field-wrap">
                          <input type="text" name="first_name" required autocomplete="off" placeholder="First Name" />
                        </div>
                        <div class="field-wrap">
                          <input type="text" name="last_name" required autocomplete="off" placeholder="Last Name"/>
                        </div>
                    </div>
                    <div class="field-wrap">
                        <input type="number" name="number" required autocomplete="off" placeholder="Phone Number"/>
                    </div>
                    <div class="field-wrap">
                        <input type="email" name="email" required autocomplete="off" placeholder="Email Address"/>
                    </div>
                    <div class="field-wrap">
                        <input type="password" name="password" required autocomplete="off" placeholder="Password"/>
                    </div>    <br/>
                    <button type="submit" class="button button-block">Get Started</button>
                </form>
            </div>
            <div id="login" class="tab-pane fade">
                <br/>
                <h1>Welcome Back!</h1>
                <form action="/signin">
                    <div class="field-wrap">
                       <input type="email" name="email" required autocomplete="off" placeholder="Email Address"/>
                    </div>
                    <div class="field-wrap">
                        <input type="password" name="password" required autocomplete="off" placeholder="Password"/>
                    </div>
                    <p class="forgot"><a href="#">Forgot Password?</a></p>
                    <button type="submit" class="button button-block">Log In</button>
                </form>
            </div>
        </div><!-- tab-content -->
    </div> <!-- /form -->
</body>