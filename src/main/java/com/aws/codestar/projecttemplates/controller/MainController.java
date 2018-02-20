package com.aws.codestar.projecttemplates.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/v1/index")
public class MainController {

	@GetMapping
	public ModelAndView index() {
		String message = "<br><div style='text-align:center;'>"
				+ "<h3>Hi</div><br><br>";
		return new ModelAndView("welcome", "message", message);
	}
}
