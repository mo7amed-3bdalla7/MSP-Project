package com.m7md.models;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.io.Serializable;

/**
 * Created by m7md on 4/1/16.
 */
public class Student implements Serializable {


    @NotNull
    @Size(min = 2)
    private String name;


    @Size(min = 2, max = 4)
    private String age;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }


}
