/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class Acc {
    String user,pass,name,address,birth,thpt,rank;
    
    public Acc() {
    }

    public Acc(String user, String pass, String name, String address, String birth, String thpt) {
        this.user = user;
        this.pass = pass;
        this.name = name;
        this.address = address;
        this.birth = birth;
        this.thpt = thpt;
    }

    public Acc(String user, String pass, String name, String address, String birth, String thpt, String rank) {
        this.user = user;
        this.pass = pass;
        this.name = name;
        this.address = address;
        this.birth = birth;
        this.thpt = thpt;
        this.rank = rank;
    }

    

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getBirth() {
        return birth;
    }

    public void setBirth(String birth) {
        this.birth = birth;
    }

    public String getThpt() {
        return thpt;
    }

    public void setThpt(String thpt) {
        this.thpt = thpt;
    }

    public String getRank() {
        return rank;
    }

    public void setRank(String rank) {
        this.rank = rank;
    }

    @Override
    public String toString() {
        return "acc{" + "user=" + user + ", pass=" + pass + ", name=" + name + ", address=" + address + ", birth=" + birth + ", thpt=" + thpt + ", rank=" + rank + '}';
    }

    
    
    
}
