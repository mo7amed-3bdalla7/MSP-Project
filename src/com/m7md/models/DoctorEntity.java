package com.m7md.models;

import javax.persistence.*;

/**
 * Created by m7md on 4/26/16.
 */
@Entity
@Table(name = "doctor", schema = "msp")
public class DoctorEntity {
    private int id;
    private String details;

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

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (details != null ? details.hashCode() : 0);
        return result;
    }
}
