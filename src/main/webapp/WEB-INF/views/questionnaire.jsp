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

    <!-- Custom fonts for this template -->
    <spring:url value="/resources/vendor/font-awesome/css/font-awesome.min.css" var="fontAwesomeCss" />
    <spring:url value="/resources/vendor/magnific-popup/magnific-popup.css" var="magnificPopupCss" />
    <spring:url value="/resources/vendor/bootstrap/css/bootstrap.min.css" var="bootstrapCss" />
    <spring:url value="/resources/css/questionnaire.min.css" var="questionnaireCss">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
    <link href="${questionnaireCss}" rel="stylesheet">
    <link href="${fontAwesomeCss}" rel="stylesheet">
    <link href="${bootstrapCss}" rel="stylesheet">
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script defer src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
      $( function() {
        $( "#startDatepicker" ).datepicker();
        $( "#endDatepicker" ).datepicker();
      } );
    </script>
</head>
<body>
    <!--<div class="moving-zone" id="dates">
        <div class="popup">
            <div class="  popup-content">
              <div class="row">
                <div class="col-sm-6 popup-text">
                   <p>Start Date:  <br><input type="text" id="startDatepicker"></p>
                    <br>

                </div>
                <div class="col-sm-6 popup-text">
                   <p>End Date:  <br><input type="text" id="endDatepicker"></p>
                    <br>
                    <a onclick="Q2()" class="round-button" ><i class="far fa-arrow-right"></i></a><br>

                </div>
                </div>
            </div>
        </div>
    </div>-->
    <div class="moving-zone" id="info1">
        <div class="popup">
            <div class="  popup-content">
              <div class="row">
                <div class="col-sm-6 popup-text">
                   <p>Start Date:  <br><input type="text" id="startDatepicker"></p>
                    <br>

                </div>
                <div class="col-sm-6 popup-text">
                   <p>End Date:  <br><input type="text" id="endDatepicker"></p>
                    <br>
                    <button class="round-button" ><i class="fa fa-arrow-right"></i></button><br>

                </div>
                </div>
            </div>
        </div>
    </div>
</body>