package com.m7md.controllers;

import com.m7md.models.HibernateImpl;
import com.m7md.models.UserEntity;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

@Controller
@RequestMapping("signup")
public class RegisterController {

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView init() {
        ModelAndView login = new ModelAndView("RTL/page_signup");
        return login;
    }

    @RequestMapping(method = RequestMethod.POST)
    public ModelAndView submit(HttpServletRequest request, @Valid @ModelAttribute("register") UserEntity register) {
        ModelAndView login = null;

        HibernateImpl hibernate = DispatcherBeans.<HibernateImpl>getBean("hibernate");
        Session session = hibernate.getSession();
        Transaction transaction = session.beginTransaction();

        if (request.getParameter("type") == "1")

            System.out.println("hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh");

        //  session.save(register);


        transaction.commit();

        if (transaction.wasCommitted()) {

            login = new ModelAndView("redirect:/");

        } else {

            login = new ModelAndView("redirect:/signup");

        }
        return login;
    }
}