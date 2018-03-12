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
    <spring:url value="/resources/css/questionnaire.min.css" var="questionnaireCss"/>

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
          $( "#question1" ).show();
          $( "#question2" ).hide();
          $( "#question3" ).hide();
          $( "#question4" ).hide();
          $( "#question5" ).hide();
        } );
        function q2(){
          $( "#question2" ).show();
          $( "#question1" ).hide();
          $( "#question3" ).hide();
          $( "#question4" ).hide();
          $( "#question5" ).hide();
        }
        function q3(){
          $( "#question2" ).hide();
          $( "#question1" ).hide();
          $( "#question3" ).show();
          $( "#question4" ).hide();
          $( "#question5" ).hide();
        }
        function q4(){
          $( "#question2" ).hide();
          $( "#question1" ).hide();
          $( "#question3" ).hide();
          $( "#question4" ).show();
          $( "#question5" ).hide();
        }
        function q4(){
          $( "#question2" ).hide();
          $( "#question1" ).hide();
          $( "#question3" ).hide();
          $( "#question4" ).hide();
          $( "#question5" ).show();
        }
    </script>
</head>
<body>
    <div class="moving-zone" id="question1">
        <div class="popup">
            <div class="  popup-content">
              <div class="row">
                    <div class="col-sm-6 popup-text">
                      <p>Origin:  <br><input type="text" id="startDatepicker"></p>
                        <br>
                    </div>
                    <div class="col-sm-6 popup-text">
                        <p>Destination:  <br><input type="text" id="startDatepicker"></p>
                        <br>
                    </div>
                    <div class="col-sm-6 popup-text">
                       <p>Start Date:  <br><input type="text" id="startDatepicker"></p>
                        <br>
                    </div>
                    <div class="col-sm-6 popup-text">
                       <p>End Date:  <br><input type="text" id="endDatepicker"></p>
                        <br>
                        <button class="round-button" onClick="q2()">Next</button><br>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="moving-zone" id="question2">
        <div class="popup">
            <div class="  popup-content">
              <div class="row">
                    <div class="col-sm-6 popup-text">
                      <p>Number of people traveling:  <br><input type="text" id="startDatepicker"></p>
                        <br>
                    </div>
                    <div class="col-sm-6 popup-text">
                        <p>Do you need a rental car?  <br><input type="radio" name="carRental" value="Yes"> Yes
                          <input type="radio" name="carRental" value="No"> No</p>
                        <br>
                        <button class="round-button" onClick="q3()">Next</button><br>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="moving-zone" id="question3">
        <div class="popup">
            <div class="  popup-content">
              <div class="row">
                    <div class="col-sm-6 popup-text">
                      <p>How would you like your stay to be?  <br></p>
                        <table>
                         <tr>
                           <td class="pull-left"><label><input type="checkbox" name="stay1" value="Luxury"> Luxury(4+ star hotels)</label></td>
                          </tr>
                          <tr>
                           <td class="pull-left"><label><input type="checkbox" name="stay2" value="Economical"> Economical(3 star hotels)</label></td>
                          </tr>
                          <tr>
                           <td class="pull-left"><label><input type="checkbox" name="stay3" value="Airbnb"> Airbnb</label><br></td>
                          </tr>
                          <tr>
                           <td class="pull-left"><label><input type="checkbox" name="stay4" value="Cheapest"> Cheapest but safest</label></td>
                          </tr>
                          <tr>
                           <td class="pull-left"><label><input type="checkbox" name="stay5" value="Hostel"> Hostel </label></td>
                          </tr>
                          <tr>
                           <td class="pull-left"><label><input type="checkbox" name="stay6" value="Family"> I'll be living with my <br>family and friends.</label></td>
                          </tr>
                        </table>
                        <br>
                    </div>
                    <div class="col-sm-6 popup-text">
                        <p>How would you like to travel?</p><br>
                          <table>
                           <tr>
                             <td class="pull-left" style="margin-left:45px; "><label><input type="checkbox" name="travelType1" value="Guided"> Guided Tour</label></td>
                            </tr>
                            <tr>
                             <td class="pull-left" style="margin-left:45px; "><label><input type="checkbox" name="travelType2" value="Myself"> I prefer exploring and learning <br>myself but would love for you <br>to plan it out for me</label></td>
                            </tr>
                          </table>
                        <br>
                        <button class="round-button" onClick="q4()">Next</button><br>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="moving-zone" id="question4">
        <div class="popup">
            <div class="  popup-content">
              <div class="row">
                    <div class="col-sm-6 popup-text">
                      <p>What is your budget preference?<br></p>
                        <table>
                         <tr>
                           <td class="pull-left"><label><input type="checkbox" name="bugdet1" value="bugdet1"> I like to travel in luxury and style</label></td>
                          </tr>
                          <tr>
                           <td class="pull-left"><label><input type="checkbox" name="bugdet2" value="bugdet2"> I prefer best deals and offers</label></td>
                          </tr>
                          <tr>
                           <td class="pull-left"><label><input type="checkbox" name="bugdet3" value="bugdet3"> Backpacking is the way to go!</label><br></td>
                          </tr>
                        </table>
                        <br>
                    </div>
                    <div class="col-sm-6 popup-text">
                        <p>How would you like your trip to be?</p><br>
                          <table>
                           <tr>
                             <td class="pull-left" style="margin-left:45px; "><label><input type="radio" name="tripType" value="Relaxed"> Relaxed and touristy</label></td>
                            </tr>
                            <tr>
                             <td class="pull-left" style="margin-left:45px; "><label><input type="radio" name="tripType" value="Fun"> Fun and adventurous</label></td>
                            </tr>
                            <tr>
                             <td class="pull-left" style="margin-left:45px; "><label><input type="radio" name="tripType" value="Tight"> Tightly packed- want to<br> see as much as possible</label></td>
                            </tr>
                            <tr>
                             <td class="pull-left" style="margin-left:45px; "><label><input type="radio" name="tripType" value="Mix"> A healthy mix of everything</label></td>
                            </tr>
                          </table>
                        <br>
                        <button class="round-button" onClick="q5()">Next</button><br>
                    </div>
                </div>
            </div>
        </div>
    </div>
  <div class="moving-zone" id="question5">
        <div class="popup">
            <div class="  popup-content">
              <div class="row">
                    <div class="col-sm-6 popup-text">
                      <p>What is the age group of everyone travelling at your trip?<br></p>
                        <table>
                         <tr>
                           <td class="pull-left"><label><input type="checkbox" name="age1" value="age1"> Less than 10</label></td>
                          </tr>
                          <tr>
                           <td class="pull-left"><label><input type="checkbox" name="age2" value="age2"> 10 - 20 </label></td>
                          </tr>
                          <tr>
                           <td class="pull-left"><label><input type="checkbox" name="age3" value="age3"> 20 - 30 </label><br></td>
                          </tr> <tr>
                           <td class="pull-left"><label><input type="checkbox" name="age4" value="age4"> 30 - 40 </label><br></td>
                          </tr> <tr>
                           <td class="pull-left"><label><input type="checkbox" name="age5" value="age5"> 40 - 50 </label><br></td>
                          </tr> <tr>
                           <td class="pull-left"><label><input type="checkbox" name="age6" value="age6"> 50 - 60 </label><br></td>
                          </tr> <tr>
                           <td class="pull-left"><label><input type="checkbox" name="age7" value="age7"> 60 - 70 </label><br></td>
                          </tr> <tr>
                           <td class="pull-left"><label><input type="checkbox" name="age8" value="age8"> 70 - 80 </label><br></td>
                          </tr> <tr>
                           <td class="pull-left"><label><input type="checkbox" name="age9" value="age9"> Greater than 80 </label><br></td>
                          </tr>
                        </table>
                        <br>
                    </div>
                    <div class="col-sm-6 popup-text">
                        <p>Is there anything else you would like to let us know ?</p><br>
                          <textarea name="message" style="width:350px; height:300px">

                          </textarea>
                        <br>
                        <button class="round-button" onClick="">Review</button><br>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>