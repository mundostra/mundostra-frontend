package com.aws.codestar.projecttemplates.controller;

import com.aws.codestar.projecttemplates.logic.Questionnaire;
import com.aws.codestar.projecttemplates.logic.UserSignup;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import java.util.Map;

/**
 * Basic Spring MVC controller that handles all GET requests.
 */
@Controller
@RequestMapping("/")
public class HelloWorldController {

    private final String siteName;

    public HelloWorldController(final String siteName) {
        this.siteName = siteName;
    }

    /**
     * Method to return index page. Hello World of Mundostra
     * @return index.jsp
     */
    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView helloWorld() {
        ModelAndView mav = new ModelAndView("index");
        mav.addObject("siteName", this.siteName);
        return mav;
    }

    /**
     * Method to return signup page
     * @return signup.jsp
     */
    @RequestMapping(value = "/signup", method = RequestMethod.GET)
    public ModelAndView getSignupPage() {
        ModelAndView mav = new ModelAndView("signup");
        mav.addObject("siteName", this.siteName);
        return mav;
    }

    /**
     * Method to signup the customer and on successful signup the customer is redirected to
     * questionnaire
     * @param signupDetails
     * @param redirectAttributes
     * @return /questionnaire
     */
    @RequestMapping(value = "/signup", method = RequestMethod.POST)
    public RedirectView saveSignupDetails(@RequestParam Map<String,String> signupDetails, RedirectAttributes redirectAttributes) {
        UserSignup signup = new UserSignup();
        String response = signup.saveUser(signupDetails);
        redirectAttributes.addFlashAttribute("email", signupDetails.get("email"));

        if(response.equalsIgnoreCase("fail")) {
            redirectAttributes.addFlashAttribute("message", "User already exist. Please signin.");
            return new RedirectView("/signup");
        }

        if(response.equalsIgnoreCase("success")) {
            return new RedirectView("/questionnaire");
        }

        redirectAttributes.addFlashAttribute("error", response);
        return new RedirectView("/error");

    }


    /***
     *
     * @param signinDetails
     * @param redirectAttributes
     * @return
     */
    @RequestMapping(value = "/signin", method = RequestMethod.POST)
    public RedirectView signInUser(@RequestParam Map<String, String> signinDetails, RedirectAttributes redirectAttributes){
        UserSignup signin = new UserSignup();
        String response = signin.signInUser(signinDetails);
        redirectAttributes.addFlashAttribute("email", signinDetails.get("email"));
        if(response.equalsIgnoreCase("fail")) {
            redirectAttributes.addFlashAttribute("message", "Email does not exist. Please signup.");
            return new RedirectView("/signup");
        }

        if(response.equalsIgnoreCase("matchfail")) {
            redirectAttributes.addFlashAttribute("message", "Incorrect password");
            return new RedirectView("/signup");
        }

        if(response.equalsIgnoreCase("success")) {
            return new RedirectView("/questionnaire");
        }

        redirectAttributes.addFlashAttribute("error", response);
        return new RedirectView("/error");
    }


    /**
     * Method to get questionnaire page
     * @return questionnaire.jsp
     */
    @RequestMapping(value = "/questionnaire", method = RequestMethod.GET)
    public ModelAndView getQuestionnaire() {
        ModelAndView mav = new ModelAndView("questionnaire2");
        mav.addObject("siteName", this.siteName);
        return mav;
    }

    /**
     * Method to save questionnaire
     * @param questionnaireData
     * @param stay_preferences
     * @param age_groups
     * @param redirectAttributes
     * @return Redirect to home page
     */
    @RequestMapping(value = "/questionnaire", method = RequestMethod.POST)
    public RedirectView saveQuestionnaire(@RequestParam Map<String,String> questionnaireData,
                                          @RequestParam(value = "stay_preference") String[] stay_preferences,
                                          @RequestParam(value = "age_group") String[] age_groups,
                                          RedirectAttributes redirectAttributes) {
        Questionnaire questionnaire = new Questionnaire();
        String response = questionnaire.addTripQuestionnaire(questionnaireData, age_groups, stay_preferences);
        if(!response.equalsIgnoreCase("success")) {
            redirectAttributes.addFlashAttribute("error", response);
            return new RedirectView("/error");
        }
        return new RedirectView("/");
    }

    /**
     * Page to return print error messages while testing
     * @return error.jsp
     */
    @RequestMapping(value = "/error", method = RequestMethod.GET)
    public ModelAndView getErrorPage() {
        ModelAndView mav = new ModelAndView("error");
        mav.addObject("siteName", this.siteName);
        return mav;
    }
}
