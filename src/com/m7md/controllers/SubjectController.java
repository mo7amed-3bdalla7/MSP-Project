package com.m7md.controllers;

import com.m7md.models.*;
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
        ModelAndView subject = null;

        try {
            int subId = Integer.parseInt(subjectID);

            List<SubjectEntity> subjectEntity = HibernateImpl.<SubjectEntity>fetchRows(SubjectEntity.class.getSimpleName() + " where id =" + subjectID);
            subject = new ModelAndView("RTL/subject");
            subject.addObject("subjects", subjectEntity.get(0));

        } catch (Exception e) {
            subject = new ModelAndView("redirect:/");
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
    public ModelAndView terms(@ModelAttribute("user") UserEntity user) {

        ModelAndView terms = null;
        try {
            StudentEntity s = getStudentIfExist(user);
            terms = new ModelAndView("RTL/terms");
            terms.addObject("subjects", getSubjects(s));
        } catch (NullPointerException f) {
            terms = new ModelAndView("redirect:/");
        }
        terms.addObject("title", "المواد");

        return terms;
    }


    @RequestMapping(value = "/lectures/{subjectId}", method = RequestMethod.GET)
    public ModelAndView lcetures(@PathVariable("subjectId") String subId) {
        ModelAndView lectures = null;
        try {
            int sub = Integer.parseInt(subId);
            lectures = new ModelAndView("RTL/lec_table");
            List<MaterialEntity> mateiral = getMateiral(sub);
            if (mateiral.size() > 0) {
                lectures.addObject("Materials", mateiral);
            } else {
                lectures = new ModelAndView("redirect:/");
            }
        } catch (Exception x) {
            lectures = new ModelAndView("redirect:/");
        }
        return lectures;
    }


    /* @RequestMapping(value = "/lectures/upload", method = RequestMethod.GET)
     public ModelAndView uploadLcetures() {
         ModelAndView lectures = null;
         try {
             lectures = new ModelAndView("RTL/add_material");
         } catch (Exception x) {
             lectures = new ModelAndView("redirect:/");
         }
         return lectures;
     }

     @RequestMapping(value = "/lectures/upload", method = RequestMethod.POST)
     public ModelAndView uploadLceturesPost(@ModelAttribute("material") MaterialEntity material,
                                            @Validated File file,
                                            BindingResult result) {
         ModelAndView lectures = null;
         try {
             lectures = new ModelAndView("RTL/add_material");
         } catch (Exception x) {
             lectures = new ModelAndView("redirect:/");
         }
         return lectures;
     }
 */
    private List getSubjects(StudentEntity studentEntity) {
        Session session = HibernateImpl.getSession();
        Transaction transaction = session.beginTransaction();
        SQLQuery sqlQuery = session.createSQLQuery(
                "select usr.name as  nme,sub.id,sub.doctor_id,sub.code,sub.name,sub.year,sub.term  " +
                        "from subject sub right outer join department_subject dep on sub.id = dep.subject_id join" +
                        " user usr  on usr.id = sub.doctor_id where dep.department_id=:stud_dept " +
                        "AND sub.year =:stud_year");
        sqlQuery.setParameter("stud_dept", studentEntity.getDepartmentId());
        sqlQuery.setParameter("stud_year", studentEntity.getYear());
        List<Object[]> list = sqlQuery.list();
        transaction.commit();
        return list;
    }

    private StudentEntity getStudentIfExist(UserEntity userEntity) {
        Session session = HibernateImpl.getSession();
        Transaction transaction = session.beginTransaction();
        Query query = session.createQuery("from StudentEntity s where s.id=:userid");
        query.setParameter("userid", userEntity.getId());
        if (query.list().isEmpty()) {
            return null;
        }
        List<StudentEntity> students = query.list();
        return students.get(0);
    }

    private List<MaterialEntity> getMateiral(int subjectId) {
        Session session = HibernateImpl.getSession();
        Transaction transaction = session.beginTransaction();
        Query query = session.createQuery("from MaterialEntity m where m.subjectId=:sub");
        query.setParameter("sub", subjectId);
        List<MaterialEntity> materialEntities = query.list();
        return materialEntities;
    }

}