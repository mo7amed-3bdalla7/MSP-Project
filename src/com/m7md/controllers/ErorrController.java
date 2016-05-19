package com.m7md.controllers;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


/**
 * Created by m7md on 3/31/16.
 */
@Controller
@RequestMapping("404")
public class ErorrController {


    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView get404() {


        ModelAndView modelAndView = new ModelAndView("RTL/page_404");
        modelAndView.addObject("404", "تسجيل الدخول");


        return modelAndView;
    }

    @RequestMapping(method = RequestMethod.POST)
    public ModelAndView getError() {


        ModelAndView modelAndView = new ModelAndView("RTL/page_404");

        return modelAndView;
    }


}
