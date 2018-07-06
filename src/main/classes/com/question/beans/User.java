package com.question.beans;

/**
 * 用户实体
 */
public class User {
    private Integer id;
    // 用户名
    private String username;
    // 密码
    private String password;
    // 头像的资源路径
    private String photo;
    // 性别
    private Integer gender;
    // 电子邮箱
    private String email;
    // 手机号码
    private String mobile;
    // 学校
    private String school;
    // 学院
    private String department;
    // 专业
    private String major;
    // 所属角色
    private Role role;

    public User() {
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public void setGender(Integer gender) {
        this.gender = gender;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public void setSchool(String school) {
        this.school = school;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", photo='" + photo + '\'' +
                ", gender=" + gender +
                ", email='" + email + '\'' +
                ", mobile='" + mobile + '\'' +
                ", school='" + school + '\'' +
                ", department='" + department + '\'' +
                ", major='" + major + '\'' +
                ", role=" + role +
                '}';
    }
}
