package com.m7md.controllers;

import com.m7md.models.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.math.BigInteger;
import java.util.List;

@Controller
@RequestMapping("/upload")
//@SessionAttributes("user")
public class FileController {
/*
    @ModelAttribute("user")
    public UserEntity createABC() {
        UserEntity user = new UserEntity();
        user.setId(-1);
        return user;
    }*/

    @Autowired
    FileValidator validator;

    @InitBinder
    private void initBinder(WebDataBinder binder) {
        binder.setValidator(validator);
    }


    @RequestMapping(method = RequestMethod.POST)
    public String fileUploaded(HttpServletRequest request, @Validated File file,
                               BindingResult result) {

        String returnVal = "redirect:/";
        try {

            BigInteger insert;
            String lecName = request.getParameter("lec_name");
            String subjectId = request.getParameter("subjectId");

            MaterialEntity materialEntity = new MaterialEntity();
            materialEntity.setName(lecName);
            materialEntity.setSubjectId(Integer.parseInt(subjectId));

            if (result.hasErrors()) {
                returnVal = "RTL/add_material";
            } else {
                MultipartFile multipartFile = file.getFile();
                String filePath = request.getServletContext().getRealPath("/") + "uploads/";
                String fileName = "msp" + System.currentTimeMillis() + ".pdf";

                try {
                    if (multipartFile.getContentType().equals("application/pdf")) {
                        multipartFile.transferTo(new java.io.File(filePath + fileName));
                    } else {

                    }

                    materialEntity.setUrl(fileName);
                    insert = HibernateImpl.<MaterialEntity>insert(materialEntity);

                } catch (IOException e) {
                    e.printStackTrace();
                }


            }
        } catch (Exception e) {

        }
        return returnVal;
    }

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView uploadLcetures(HttpSession session) {

        ModelAndView lectures = null;
        try {
            List<SubjectEntity> fetchedRows = HibernateImpl.fetchRows(SubjectEntity.class.getSimpleName()
                    + " where doctor_id =" + ((UserEntity) session.getAttribute("user")).getId());

            lectures = new ModelAndView("RTL/add_material");
            lectures.addObject("subjects", fetchedRows);
        } catch (Exception x) {
            lectures = new ModelAndView("redirect:/");
        }
        lectures.addObject("title", "اضافة محاضرة");

        return lectures;
    }


}