package com.m7md.models;

import javax.persistence.*;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.Pattern;

/**
 * Created by m7md on 4/26/16.
 */
@Entity
@Table(name = "doctor", schema = "msp")
public class DoctorEntity {
    private int id;
    @Max(value = 4,message = "اختر قسم صحيح ")
    @Min(value = 1,message = "اختر قسم صحيح")
    private int departmentId;
   @Pattern(regexp = "\\w+",message = "من فضلك حدد معلومات عن الدكتور ")
    private String details;

    @OneToOne
    private UserEntity user;


    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "details")
    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        DoctorEntity that = (DoctorEntity) o;

        if (id != that.id) return false;
        if (details != null ? !details.equals(that.details) : that.details != null) return false;

        return true;
    }

    @Basic
    @Column(name = "department_id")
    public int getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(int departmentId) {
        this.departmentId = departmentId;
    }

    /*public UserEntity getUser() {
        return user;
    }

    public void setUser(UserEntity user) {
        this.user = user;
    }*/
}
