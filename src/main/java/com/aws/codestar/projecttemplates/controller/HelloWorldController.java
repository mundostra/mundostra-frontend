package com.aws.codestar.projecttemplates.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

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
    public RedirectView saveSignupDetails() {
        return new RedirectView("/questionnaire");
    }

    @RequestMapping(value = "/questionnaire", method = RequestMethod.GET)
    public ModelAndView getQuestionnaire() {
        ModelAndView mav = new ModelAndView("questionnaire");
        mav.addObject("siteName", this.siteName);
        return mav;
    }
}
