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
    <spring:url value="/resources/vendor/bootstrap/css/bootstrap.min.css" var="bootstrapCss" />
    <spring:url value="/resources/css/questionnaire2.css" var="questionnaireCss"/>

    <link href="${bootstrapCss}" rel="stylesheet">
    <link href="${questionnaireCss}" rel="stylesheet">
    <link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel = "stylesheet">

    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        $(function() {
            $( "#startDateInput" ).datepicker();
            $("#endDateInput").datepicker();
        });
    </script>

</head>
<body>
    <div class="container h-100">
        <div class="row h-100 justify-content-center align-items-center">
            <form class="col-6" id="questionnaire" action="/questionnaire" method="post" data-toggle="validator" role="form">
                <div id="question" style="display:none;" class="question">
                    <p class="display-4">Tell us what cities you would like to visit?</p>
                    <div class="form-group">
                        <label for="originCityInput" class="lead">Origin City</label>
                        <input type="text" class="form-control lead" id="originCityInput" placeholder="for e.g. London" name="origin_city" required>
                    </div>
                    <div class="form-group">
                        <label for="destinationCitiesInput" class="lead">Destination Cities</label>
                        <input type="text" class="form-control lead" id="destinationCitiesInput" placeholder="for e.g. Paris, Zurich" name="destination_cities" required>
                    </div>
                </div>
                <div id="question" style="display:none;" class="question">
                    <p class="display-4">What dates you would like to travel?</p>
                    <div class="form-group">
                        <label for="startDateInput" class="lead">Start Date</label>
                        <input type="text" class="form-control lead" id="startDateInput" name="start_date" required>
                    </div>
                    <div class="form-group">
                        <label for="endDateInput" class="lead">End Date</label>
                        <input type="text" class="form-control lead" id="endDateInput" name="end_date" required>
                    </div>
                </div>
                <div id="question" style="display:none;" class="question">
                    <p class="display-4">Tell us about the travelers?</p>
                    <div class="form-group">
                        <label for="numberOfTravelersInput" class="lead">Number of travelers</label>
                        <input type="text" class="form-control lead" id="numberOfTravelersInput" name="number_of_travelers" required>
                    </div>
                    <div class="form-group">
                        <label for="ageGroupInput" class="lead">Age group of travelers</label>
                        <br/>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="checkbox" id="ageGroup_10" value="10" name="age_group">
                            <label class="form-check-label lead" for="ageGroup_10">< 10</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="checkbox" id="ageGroup_10_20" value="10-20" name="age_group">
                            <label class="form-check-label lead" for="ageGroup_10_20">10-20</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="checkbox" id="ageGroup_20_30" value="20-30" name="age_group" checked>
                            <label class="form-check-label lead" for="ageGroup_20_30">20-30</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="checkbox" id="ageGroup_30_40" value="30-40" name="age_group">
                            <label class="form-check-label lead" for="ageGroup_30_40">30-40</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="checkbox" id="ageGroup_40_50" value="40-50" name="age_group">
                            <label class="form-check-label lead" for="ageGroup_40_50">40-50</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="checkbox" id="ageGroup_50_60" value="50-60" name="age_group">
                            <label class="form-check-label lead" for="ageGroup_50_60">50-60</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="checkbox" id="ageGroup_60" value="60" name="age_group">
                            <label class="form-check-label lead" for="ageGroup_60">>60</label>
                        </div>
                    </div>
                </div>
                <div id="question" style="display:none;" class="question">
                    <p class="display-4">Your preferences</p>
                    <div class="form-group">
                        <label for="rentalCarInput" class="lead">Need a rental car?</label>
                        <br/>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="rental_car" id="rentalCarYes" value="1">
                            <label class="form-check-label lead" for="rentalCarYes">Yes</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="rental_car" id="rentalCarNo" value="0" checked>
                            <label class="form-check-label lead" for="rentalCarNo">No</label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="stayInput" class="lead">How would you like your stay?</label>
                        <br/>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="stay_luxury" value="Luxury" name="stay_preference">
                            <label class="form-check-label lead" for="stay_luxury">Luxury hotels (4+ stars)</label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="stay_economical" value="Economical" name="stay_preference" checked>
                            <label class="form-check-label lead" for="stay_economical">Economical hotels (3 star)</label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="stay_airbnb" value="AirBnB" name="stay_preference">
                            <label class="form-check-label lead" for="stay_airbnb">AirBnB</label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="stay_cheapsafe" value="Cheapest Safe" name="stay_preference">
                            <label class="form-check-label lead" for="stay_cheapsafe">Cheapest safe</label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="stay_hostel" value="Hostel" name="stay_preference">
                            <label class="form-check-label lead" for="stay_hostel">Hostels</label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="stay_friends" value="Family Friends" name="stay_preference">
                            <label class="form-check-label lead" for="stay_friends">I'll be staying with family and friends</label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="stayInput" class="lead">How would you like to travel?</label>
                        <br/>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="tour_preference" id="tourPreferenceGuided" value="Guided">
                            <label class="form-check-label lead" for="tourPreferenceGuided">Guided tours</label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="tour_preference" id="tourPreferencePlannedItinerary" value="Planned Itinerary" checked>
                            <label class="form-check-label lead" for="tourPreferencePlannedItinerary">Much rather explore on my own but would love for you to plan it out for me</label>
                        </div>
                    </div>
                </div>
                <div id="question" style="display:none;" class="question">
                    <p class="display-4">Is there anything else you would like to let us know?</p>
                    <textarea class="form-control" id="notesInput" name="notes" rows="3" style="padding-bottom: 25px;"></textarea>
                    <br/>
                </div>
                <div id="question" style="display:none;" class="question">
                    <p class="display-4">lastly, your contact details</p>
                    <div class="form-group">
                        <label for="nameInput" class="lead">Name</label>
                        <input type="text" class="form-control lead" id="nameInput" placeholder="John Doe" name="name" required>
                    </div>
                    <div class="form-group">
                        <label for="phoneInput" class="lead">Phone </label>
                        <input type="text" class="form-control lead" id="phoneInput" placeholder="" name="phone" required>
                    </div>
                    <div class="form-group">
                        <label for="emailInput" class="lead">Email </label>
                        <input type="text" class="form-control lead" id="emailInput" placeholder="" name="email" required>
                    </div>
                </div>
                <div class="form-group">
                    <button type="button" id="prevBtn" class="btn btn-secondary" onClick="nextPrev(-1)" class="lead">Previous</button>
                    <button type="button" id="nextBtn" class="btn btn-secondary" onClick="nextPrev(1)" class="lead">Next</button>
                </div>
            </form>
        </div>
    </div>
<script>

    function showTab(n) {
      // This function will display the specified tab of the form ...
      var x = document.getElementsByClassName("question");
      x[n].style.display = "block";
      // ... and fix the Previous/Next buttons:
      if (n == 0) {
        document.getElementById("prevBtn").style.display = "none";
      } else {
        document.getElementById("prevBtn").style.display = "inline";
      }
      if (n == (x.length - 1)) {
        document.getElementById("nextBtn").innerHTML = "Submit";
      } else {
        document.getElementById("nextBtn").innerHTML = "Next";
      }
      // ... and run a function that displays the correct step indicator:
      //fixStepIndicator(n)
    }

    function nextPrev(n) {
      // This function will figure out which tab to display
      var x = document.getElementsByClassName("question");
      // Exit the function if any field in the current tab is invalid:
      //if (n == 1 && !validateForm()) return false;
      // Hide the current tab:
      x[currentTab].style.display = "none";
      // Increase or decrease the current tab by 1:
      currentTab = currentTab + n;
      // if you have reached the end of the form... :
      if (currentTab >= x.length) {
        //...the form gets submitted:
        document.getElementById("questionnaire").submit();
        return false;
      }
      // Otherwise, display the correct tab:

      showTab(currentTab);
    }

    var currentTab = 0; // Current tab is set to be the first tab (0)
    showTab(currentTab); // Display the current tab
</script>
</body>