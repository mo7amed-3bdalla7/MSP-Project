package com.m7md.controllers;

import com.m7md.models.*;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.HttpSessionRequiredException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.math.BigInteger;
import java.util.List;

@Controller
//@SessionAttributes("user")
@RequestMapping("signup")
public class RegisterController {

//    private static final Logger logger = Logger.getLogger(RegisterController.class);


    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView init() {


        return getDepartments();
    }

   /* @ModelAttribute("user")
    public UserEntity createABC() {
        UserEntity user = new UserEntity();
        user.setId(-1);
        return user;
    }*/

    private ModelAndView getDepartments() {
        List<DepartmentEntity> fetchedRow = HibernateImpl.fetchRows(DepartmentEntity.class.getSimpleName());

        ModelAndView signup = new ModelAndView("RTL/page_signup");
        signup.addObject("departments", fetchedRow);
        return signup;
    }

    @RequestMapping(method = RequestMethod.POST)
    @ExceptionHandler(HttpSessionRequiredException.class)
    public ModelAndView submit(
            @Valid @ModelAttribute("userReg") UserEntity userReg,
            BindingResult userResult,
            @Valid @ModelAttribute("doctor") DoctorEntity doctor,
            BindingResult doctorResult,
            @Valid @ModelAttribute("student") StudentEntity student,
            BindingResult studentResult
    ) {


        ModelAndView login = getDepartments();

        if (userResult.hasErrors()) {
            login.addObject("error", "userReg");
            return login;
        } else {

            BigInteger insert = null;

            if (userReg.getType() == UserEntity.ADMIN) {
                insert = HibernateImpl.<UserEntity>insert(userReg);
            } else if (userReg.getType() == UserEntity.DOCTOR) {
                if (doctorResult.hasErrors()) {
                    login.addObject("error", "doctor");
                } else {
                    insert = HibernateImpl.<UserEntity>insert(userReg);
                    doctor.setId(insert.intValue());
                    HibernateImpl.insert(doctor);
                }


            } else if (userReg.getType() == UserEntity.STUDENT) {
                if (studentResult.hasErrors()) {
                    login.addObject("error", "student");
                } else {
                    insert = HibernateImpl.<UserEntity>insert(userReg);
                    student.setId(insert.intValue());
                    HibernateImpl.insert(student);
                }

            }


            if (insert != null && insert.intValue() > 0) {

                login = new ModelAndView("redirect:/");
            }


        }


        return login;
    }
}