package com.slm.pojo;

public class User {
    private Integer id;//用户ID
    private String username;//用户昵称
    private String role;//用户身份
    private String mobile;//手机号码
    private String openid;//wechatId
    public User() {
    }

    public User(Integer id, String email, String username, String role, String mobile) {
        this.id = id;
        this.openid = email;
        this.username = username;
        this.role = role;
        this.mobile = mobile;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", email='" + openid + '\'' +
                ", username='" + username + '\'' +
                ", role='" + role + '\'' +
                ", mobile='" + mobile + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getOpenId() {
        return openid;
    }

    public void setOpenId(String email) {
        this.openid = email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }
}