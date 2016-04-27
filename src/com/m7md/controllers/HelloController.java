package com.m7md.controllers;


import com.m7md.models.HibernateImpl;
import com.m7md.models.UserEntity;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.List;


/**
 * Created by m7md on 3/31/16.
 */
@Controller
public class HelloController {

    @RequestMapping(value = "/hello", method = RequestMethod.GET)
    public ModelAndView getForm() {


        ModelAndView modelAndView = new ModelAndView("../index");
        //Session session = HibernateImpl.getSession();

        HibernateImpl hibernate = DispatcherBeans.<HibernateImpl>getBean("hibernate");
        Session session = hibernate.getSession();

        Transaction transaction = session.beginTransaction();


        List<UserEntity> list = session.createQuery("from UserEntity").list();


        transaction.commit();












      /*  session.beginTransaction();

        DepartmentEntity hiberDepartmentEntity = new DepartmentEntity();
        hiberDepartmentEntity.setName("or");
        hiberDepartmentEntity.setId(22);

//        session.delete(hiberDepartmentEntity);
        SQLQuery sqlQuery = session.createSQLQuery("SELECT * FROM department").addEntity(hiberDepartmentEntity.getClass());
        List<DepartmentEntity> list = sqlQuery.list();
        Query query = session.createQuery("select count (*) from DepartmentEntity");


        int value = ((Long) query.uniqueResult()).intValue();
        modelAndView.addObject("list", list);
        session.flush();
        session.getTransaction().commit();
        System.out.println("ffffffffffffffff" + value);


*/
        modelAndView.addObject("ma", list.get(0).getName());

        return modelAndView;
    }

    @RequestMapping(value = "/welcome", method = RequestMethod.POST)
    public ModelAndView ma(@Valid @ModelAttribute("ma") Student ma1, BindingResult result) {

        ModelAndView modelAndView = new ModelAndView("template/RTL/index");

       /* if (result.hasErrors())
            modelAndView = new ModelAndView("error");
*/

        return modelAndView;
    }
}
