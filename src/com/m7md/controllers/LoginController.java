package com.m7md.controllers;

import com.m7md.models.HibernateImpl;
import com.m7md.models.UserEntity;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("login")
public class LoginController {

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView init() {
        ModelAndView login = new ModelAndView("RTL/page_login");
        return login;
    }

    @RequestMapping(method = RequestMethod.POST)
    public ModelAndView submit(@Valid @ModelAttribute("loginModel") UserEntity loginModel) {
        ModelAndView login = null;

        HibernateImpl hibernate = DispatcherBeans.<HibernateImpl>getBean("hibernate");
        Session session = hibernate.getSession();
        Transaction transaction = session.beginTransaction();


        Query query = session.createQuery("from UserEntity user where user.email =:email and user.password=:password");
        query.setParameter("email", loginModel.getEmail());
        query.setParameter("password", loginModel.getPassword());
        List<UserEntity> list = query.list();

        transaction.commit();

        if (list.size() > 0) {

            login = new ModelAndView("redirect:/");

        } else {

            login = new ModelAndView("redirect:/login");

        }
        return login;
    }
}