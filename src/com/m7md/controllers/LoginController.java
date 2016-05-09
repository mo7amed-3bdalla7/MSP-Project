package com.m7md.controllers;

import com.m7md.models.HibernateImpl;
import com.m7md.models.UserEntity;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.List;

@Controller
@SessionAttributes("user")
public class LoginController {

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView init() {
        ModelAndView login = new ModelAndView("RTL/page_login");
        return login;
    }

    @ModelAttribute("user")
    public UserEntity createABC() {
        UserEntity user = new UserEntity();
        user.setId(-1);
        return user;
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ModelAndView submit(@Valid @ModelAttribute("usermodel") UserEntity userModel, BindingResult result) {
        ModelAndView login = null;
        if (result.hasErrors()) {
            login = new ModelAndView("RTL/page_login");
            login.addObject("login_error", "من فضللك تأكد من البيانات :(");
            return login;
        }


        HibernateImpl hibernate = DispatcherBeans.<HibernateImpl>getBean("hibernate");
        Session session = hibernate.getSession();
        Transaction transaction = session.beginTransaction();


        Query query = session.createQuery("from UserEntity user where user.email =:email and user.password=:password");
        query.setParameter("email", userModel.getEmail());
        query.setParameter("password", userModel.getPassword());
        List<UserEntity> list = query.list();

        transaction.commit();

        if (list.size() > 0) {
            login = new ModelAndView("redirect:/");
            login.addObject("user", list.get(0));


        } else {

            login = new ModelAndView("RTL/page_login");
            login.addObject("login_error", "من فضللك تأكد من البيانات :(");

        }
        return login;
    }


    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public ModelAndView logout() {

        ModelAndView logout = new ModelAndView("redirect:/");
        UserEntity user = new UserEntity();
        user.setId(-1);
        logout.addObject("user", user);
        return logout;
    }


}
