package com.m7md.models;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

/**
 * Created by m7md on 5/18/16.
 */
public class FileValidator implements Validator {
    public boolean supports(Class<?> paramClass) {
        return File.class.equals(paramClass);
    }

    public void validate(Object obj, Errors errors) {
        File file = (File) obj;
        if (file.getFile().getSize() == 0) {
            errors.rejectValue("file", "valid.file");
        }
    }
}