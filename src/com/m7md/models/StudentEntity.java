package com.m7md.models;

import javax.persistence.*;

/**
 * Created by m7md on 4/26/16.
 */
@Entity
@Table(name = "student", schema = "msp")
public class StudentEntity {
    private int id;
    private int section;
    private int year;
    private String uid;

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
    public int getSection() {
        return section;
    }

    public void setSection(int section) {
        this.section = section;
    }

    @Basic
    @Column(name = "year")
    public int getYear() {
        return year;
    }

    public void setYear(int year) {
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

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + section;
        result = 31 * result + year;
        result = 31 * result + (uid != null ? uid.hashCode() : 0);
        return result;
    }
}
