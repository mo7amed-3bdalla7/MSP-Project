package com.m7md.controllers;

import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Created by m7md on 4/25/16.
 */
public class DispatcherBeans {
    public static <T> T getBean(String beanName) {

        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("../dispatcher-servlet.xml");
        return (T) context.getBean(beanName);
    }
}
