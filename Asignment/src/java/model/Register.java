/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class Register {
    int id;
    String name;
    String mobile;
    String email, birthday, city, thpt, face;
    int tu_van, tuyen_sinh, xet, thi;

    public Register() {
    }

    public Register(String name, String mobile, String email, String birthday, String city, String thpt, String face, int tu_van, int tuyen_sinh, int xet, int thi) {
        this.name = name;
        this.mobile = mobile;
        this.email = email;
        this.birthday = birthday;
        this.city = city;
        this.thpt = thpt;
        this.face = face;
        this.tu_van = tu_van;
        this.tuyen_sinh = tuyen_sinh;
        this.xet = xet;
        this.thi = thi;
    }

    public Register(int id, String name, String mobile, String email, String birthday, String city, String thpt, String face, int tu_van, int tuyen_sinh, int xet, int thi) {
        this.id = id;
        this.name = name;
        this.mobile = mobile;
        this.email = email;
        this.birthday = birthday;
        this.city = city;
        this.thpt = thpt;
        this.face = face;
        this.tu_van = tu_van;
        this.tuyen_sinh = tuyen_sinh;
        this.xet = xet;
        this.thi = thi;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getThpt() {
        return thpt;
    }

    public void setThpt(String thpt) {
        this.thpt = thpt;
    }

    public String getFace() {
        return face;
    }

    public void setFace(String face) {
        this.face = face;
    }

    public int getTu_van() {
        return tu_van;
    }

    public void setTu_van(int tu_van) {
        this.tu_van = tu_van;
    }

    public int getTuyen_sinh() {
        return tuyen_sinh;
    }

    public void setTuyen_sinh(int tuyen_sinh) {
        this.tuyen_sinh = tuyen_sinh;
    }

    public int getXet() {
        return xet;
    }

    public void setXet(int xet) {
        this.xet = xet;
    }

    public int getThi() {
        return thi;
    }

    public void setThi(int thi) {
        this.thi = thi;
    }

    @Override
    public String toString() {
        return "Register{" + "id=" + id + ", name=" + name + ", mobile=" + mobile + ", email=" + email + ", birthday=" + birthday + ", city=" + city + ", thpt=" + thpt + ", face=" + face + ", tu_van=" + tu_van + ", tuyen_sinh=" + tuyen_sinh + ", xet=" + xet + ", thi=" + thi + '}';
    }

    
}
