package com.m7md.models;

import javax.persistence.*;

/**
 * Created by m7md on 4/26/16.
 */
@Entity
@Table(name = "department_subject", schema = "msp")
public class DepartmentSubjectEntity {
    private int id;
    private int departmentId;
    @Column(name = "subject_id")
    @Basic
    public int getSubjectId() {
        return subjectId;
    }

    public void setSubjectId(int subjectId) {
        this.subjectId = subjectId;
    }
    @Column(name = "department_id")
    @Basic
    public int getDepartmentId() {
        return departmentId;
    }


    public void setDepartmentId(int departmentId) {
        this.departmentId = departmentId;
    }

    private int subjectId;


    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        DepartmentSubjectEntity that = (DepartmentSubjectEntity) o;

        if (id != that.id) return false;

        return true;
    }

    @Override
    public int hashCode() {
        return id;
    }
}
