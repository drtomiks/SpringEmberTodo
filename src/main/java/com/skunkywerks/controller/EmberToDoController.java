package com.skunkywerks.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/")
public class EmberToDoController {

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView loadHomePage() {
		ModelAndView modelAndView = new ModelAndView("mytodo");
		//ModelAndView modelAndView = new ModelAndView("test");
		return modelAndView;
	}
}
