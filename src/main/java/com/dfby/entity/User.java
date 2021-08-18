package com.dfby.entity;

import java.util.Date;

public class User {
    private Integer uid;

    private String uname;

    private String upass;

    private String gender;

    private Date regtime;

    private String head;

    public User() {
    }

    @Override
    public String toString() {
        return "User{" +
                "uid=" + uid +
                ", uname='" + uname + '\'' +
                ", upass='" + upass + '\'' +
                ", gender='" + gender + '\'' +
                ", regtime=" + regtime +
                ", head='" + head + '\'' +
                '}';
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUpass() {
        return upass;
    }

    public void setUpass(String upass) {
        this.upass = upass;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Date getRegtime() {
        return regtime;
    }

    public void setRegtime(Date regtime) {
        this.regtime = regtime;
    }

    public String getHead() {
        return head;
    }

    public void setHead(String head) {
        this.head = head;
    }

    public User(Integer uid, String uname, String upass, String gender, Date regtime, String head) {

        this.uid = uid;
        this.uname = uname;
        this.upass = upass;
        this.gender = gender;
        this.regtime = regtime;
        this.head = head;
    }
}