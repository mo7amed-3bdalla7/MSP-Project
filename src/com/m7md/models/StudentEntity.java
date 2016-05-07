package com.m7md.models;

import javax.persistence.*;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.Pattern;

/**
 * Created by m7md on 4/26/16.
 */
@Entity
@Table(name = "student", schema = "msp")
public class StudentEntity {
    private int id;
    @Min(value = 1,message = "من فضلك حدد السكشن ")
    private Integer section = 0;
    @Max(value = 4,message = "السنه الدراسيه اكبر من 1 واقل من 5")
    @Min(value = 1,message = "السنه الدراسيه اكبر من 1 واقل من 5")
    private Integer year = 0;
    @Pattern(regexp = "\\d{15}",message = "كود الطالب مكون من 15 رقم")
    private String uid;

    private UserEntity user;
    @Max(value = 4,message = "اختر قسم صحيح ")
    @Min(value = 1,message = "اختر قسم صحيح")
    private Integer departmentId;

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "section")
    public Integer getSection() {
        return section;
    }

    public void setSection(Integer section) {
        this.section = section;
    }

    @Basic
    @Column(name = "year")
    public Integer getYear() {
        return year;
    }

    public void setYear(Integer year) {
        this.year = year;
    }

    @Basic
    @Column(name = "uid")
    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }


    @Basic
    @Column(name = "department_id")
    public Integer getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(Integer departmentId) {
        this.departmentId = departmentId;
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        StudentEntity that = (StudentEntity) o;

        if (id != that.id) return false;
        if (section != that.section) return false;
        if (year != that.year) return false;
        if (uid != null ? !uid.equals(that.uid) : that.uid != null) return false;

        return true;
    }

}
