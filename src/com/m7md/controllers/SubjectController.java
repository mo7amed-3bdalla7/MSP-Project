package com.m7md.controllers;

import com.m7md.models.HibernateImpl;
import com.m7md.models.StudentEntity;
import com.m7md.models.SubjectEntity;
import com.m7md.models.UserEntity;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@SessionAttributes("user")
public class SubjectController {


    @RequestMapping(value = "/subject/{subjectId}", method = RequestMethod.GET)
    public ModelAndView subject(@PathVariable("subjectId") String subjectID) {
        ModelAndView subject = new ModelAndView("RTL/subject");

        try {
            int subId = Integer.parseInt(subjectID);

            List<SubjectEntity> subjectEntity = HibernateImpl.<SubjectEntity>fetchRows(SubjectEntity.class.getSimpleName() + " where id =" + subjectID);
            subject.addObject("subjects", subjectEntity.get(0));
        } catch (Exception e) {

        }


        return subject;
    }

    @ModelAttribute("user")
    public UserEntity createABC() {
        UserEntity user = new UserEntity();
        user.setId(-1);
        return user;
    }

    @RequestMapping(value = "/terms", method = RequestMethod.GET)
    public ModelAndView terms() {
        ModelAndView terms = new ModelAndView("RTL/terms");
        terms.addObject("subjects", getSubjects(new StudentEntity()));
        return terms;
    }


    @RequestMapping(value = "/lectures", method = RequestMethod.GET)
    public ModelAndView lcetures() {

        ModelAndView lectures = new ModelAndView("RTL/lec_table");
        return lectures;
    }

    private List getSubjects(StudentEntity studentEntity) {
        Session session = HibernateImpl.getSession();
        Transaction transaction = session.beginTransaction();
        SQLQuery sqlQuery = session.createSQLQuery("select usr.name as  nme,sub.id,sub.doctor_id,sub.code,sub.name,sub.year,sub.term  from subject sub right outer join department_subject dep on sub.id = dep.subject_id join user usr  on usr.id = sub.doctor_id where dep.department_id=1");
//        Query query = session.createQuery("from SubjectEntity s where s.year=:userYear");
//        query.setParameter("userYear", studentEntity.getYear());
//        List all_subjects = query.list();

//        sqlQuery.addEntity(SubjectEntity.class);
//        sqlQuery.addEntity(UserEntity.class);
        List<Object[]> list = sqlQuery.list();
        transaction.commit();
//        System.out.println(list.get(0).);
        return list;
    }

    private StudentEntity getStudentIfExist(UserEntity userEntity) {
        Session session = HibernateImpl.getSession();
        Transaction transaction = session.beginTransaction();
        Query query = session.createQuery("from StudentEntity s where s.id=:userid");
        query.setParameter("userid", userEntity.getId());
        List<StudentEntity> students = query.list();
        return students.get(0);
    }
}