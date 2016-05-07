package com.m7md.controllers;

import com.m7md.models.*;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.HttpSessionRequiredException;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.math.BigInteger;
import java.util.List;

@Controller
@SessionAttributes("user")
@RequestMapping("signup")
public class RegisterController {

//    private static final Logger logger = Logger.getLogger(RegisterController.class);


    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView init() {

        List<DepartmentEntity> fetchedRow = HibernateImpl.fetchRows(DepartmentEntity.class.getSimpleName());

        ModelAndView login = new ModelAndView("RTL/page_signup");
        login.addObject("departments", fetchedRow);


        return login;
    }

    @ModelAttribute("user")
    public UserEntity createABC() {
        UserEntity user = new UserEntity();
        user.setId(-1);
        return user;
    }

    @RequestMapping(method = RequestMethod.POST)
    @ExceptionHandler(HttpSessionRequiredException.class)
    public ModelAndView submit(
            @Valid @ModelAttribute("user") UserEntity user,
            BindingResult userResult,
            @Valid @ModelAttribute("doctor") DoctorEntity doctor,
            BindingResult doctorResult,
            @Valid @ModelAttribute("student") StudentEntity student,
            BindingResult studentResult,
            SessionStatus status
    ) {
        ModelAndView login = new ModelAndView("RTL/page_signup");
        if (userResult.hasErrors()) {
            login.addObject("error", "user");
            return login;
        } else {
            System.out.println("fffffffffffffffffffffffffff");

            BigInteger insert = null;

            if (user.getType() == UserEntity.ADMIN) {
                insert = HibernateImpl.<UserEntity>insert(user);
            } else if (user.getType() == UserEntity.DOCTOR) {
                if (doctorResult.hasErrors()) {
                    login.addObject("error", "doctor");
                } else {
                    insert = HibernateImpl.<UserEntity>insert(user);
                    doctor.setId(insert.intValue());
                    HibernateImpl.insert(doctor);
                }
                return login;

            } else if (user.getType() == UserEntity.STUDENT) {
                if (studentResult.hasErrors()) {
                    login.addObject("error", "doctor");
                } else {
                    insert = HibernateImpl.<UserEntity>insert(user);
                    student.setId(insert.intValue());
                    HibernateImpl.insert(student);
                }
                return login;
            }

            user.setId(insert.intValue());

            if (insert != null && insert.intValue() > 0) {

                login = new ModelAndView("redirect:/");
            } else {

                login = new ModelAndView("redirect:/signup");

            }


        }


        return login;
    }
}