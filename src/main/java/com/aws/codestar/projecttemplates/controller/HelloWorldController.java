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

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView helloWorld() {
        ModelAndView mav = new ModelAndView("index");
        mav.addObject("siteName", this.siteName);
        return mav;
    }

    @RequestMapping(value = "/signup", method = RequestMethod.GET)
    public ModelAndView getSignupPage() {
        ModelAndView mav = new ModelAndView("signup");
        mav.addObject("siteName", this.siteName);
        return mav;
    }

    @RequestMapping(value = "/signup", method = RequestMethod.POST)
    public RedirectView saveSignupDetails(@RequestParam Map<String,String> signupDetails, RedirectAttributes redirectAttributes) {
        UserSignup signup = new UserSignup();
        String response = signup.saveUser(signupDetails);
        redirectAttributes.addFlashAttribute("email", signupDetails.get("email"));
        if(!response.equalsIgnoreCase("success")) {
            redirectAttributes.addFlashAttribute("error", response);
            return new RedirectView("/error");
        }
        return new RedirectView("/questionnaire");
    }

    @RequestMapping(value = "/questionnaire", method = RequestMethod.GET)
    public ModelAndView getQuestionnaire() {
        ModelAndView mav = new ModelAndView("questionnaire2");
        mav.addObject("siteName", this.siteName);
        return mav;
    }

    @RequestMapping(value = "/questionnaire", method = RequestMethod.POST)
    public RedirectView saveQuestionnaire(@RequestParam Map<String,String> questionnaireData,
                                          @RequestParam(value = "stay_preference") String[] stay_preferences,
                                          @RequestParam(value = "age_group") String[] age_groups,
                                          RedirectAttributes redirectAttributes) {
        Questionnaire questionnaire = new Questionnaire();
        String response = questionnaire.saveQuestionnaire(questionnaireData, age_groups, stay_preferences);
        if(!response.equalsIgnoreCase("success")) {
            redirectAttributes.addFlashAttribute("error", response);
            return new RedirectView("/error");
        }
        return new RedirectView("/");
    }

    @RequestMapping(value = "/error", method = RequestMethod.GET)
    public ModelAndView getErrorPage() {
        ModelAndView mav = new ModelAndView("error");
        mav.addObject("siteName", this.siteName);
        return mav;
    }
}
