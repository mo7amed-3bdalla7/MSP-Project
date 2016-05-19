package com.m7md.models;

import javax.persistence.*;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.Pattern;
import javax.xml.bind.DatatypeConverter;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * Created by m7md on 4/26/16.
 */
@Entity
@Table(name = "user", schema = "msp")
public class UserEntity {
    public final static Short ADMIN = 1;
    public final static Short DOCTOR = 2;
    public final static Short STUDENT = 3;

    private int id;
    @Pattern(regexp = "[a-zA-Z0-9]{6,}", message = "اسم المستخدم يجب ان يبدأ بحرف ع الاقل وهو مكون من 6 احرف وارقام فقط")
//    @Size(min = 6, message = "اسم المستخدم يجب ان يحتوى ع الاقل على 6 احرف")
    private String name;
    @Pattern(regexp = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}", message = "من فضلك ادخل بريد الكترونى صحيح")
    private String email;
    @Pattern(regexp = "[a-zA-Z0-9]{4,}", message = "الرقم السرى لا يقل عن 8 حروف وارقام")
    private String password;
    @Pattern(regexp = "01\\d{9}", message = "من فضلك ادخل رقم هاتف صحيح")
    private String phone;
    private byte active;
    @Min(value = 1, message = "ان لم تحدد نوع المستخدم لم يتم تسجيلك ")
    @Max(value = 3, message = "ان لم تحدد نوع المستخدم لم يتم تسجيلك ")
    private Short type;

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "email")
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Basic
    @Column(name = "password")
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Basic
    @Column(name = "phone")
    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Basic
    @Column(name = "active")
    public byte getActive() {
        return active;
    }

    public void setActive(byte active) {
        this.active = active;
    }

    @Basic
    @Column(name = "type")
    public Short getType() {
        return type;
    }

    public void setType(Short type) {
        this.type = type;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        UserEntity that = (UserEntity) o;

        if (id != that.id) return false;
        if (active != that.active) return false;
        if (name != null ? !name.equals(that.name) : that.name != null) return false;
        if (email != null ? !email.equals(that.email) : that.email != null) return false;
        if (password != null ? !password.equals(that.password) : that.password != null) return false;
        if (phone != null ? !phone.equals(that.phone) : that.phone != null) return false;
        if (type != that.type) return false;
        return true;
    }


    public static String hashPassword(String password) {
        String sault = "m7md";
        String hash = null;

        try {
            MessageDigest md = MessageDigest.getInstance("SHA-1");
            hash = password + sault;
            md.update(hash.getBytes("UTF-8"));
            byte[] digest = md.digest();
            //System.out.println(hash);
            hash = DatatypeConverter.printHexBinary(digest);

        } catch (NoSuchAlgorithmException | UnsupportedEncodingException ex) {

        }
        return hash;
    }


}
