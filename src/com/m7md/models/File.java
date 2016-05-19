package com.m7md.models;

import org.springframework.web.multipart.MultipartFile;

/**
 * Created by m7md on 5/18/16.
 */
public class File {

    MultipartFile file;

    public MultipartFile getFile() {
        return file;
    }

    public void setFile(MultipartFile file) {
        this.file = file;
    }
}