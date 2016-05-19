package com.m7md.controllers;


import com.m7md.models.UserEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;


/**
 * Created by m7md on 3/31/16.
 */
@Controller
@SessionAttributes("user")
public class HelloController {


    @ModelAttribute("user")
    public UserEntity createABC() {
        UserEntity user = new UserEntity();
        user.setId(-1);
        return user;
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView getForm() {


        ModelAndView modelAndView = new ModelAndView("../index");
        modelAndView.addObject("title", "اﻟﺮﺋﻴﺴﻴﺔ");
        //Session session = HibernateImpl.getSession();


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
        return modelAndView;
    }


}
