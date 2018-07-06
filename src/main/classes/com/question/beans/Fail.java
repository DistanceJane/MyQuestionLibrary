package com.question.beans;

/**
 * 错题实体类
 */
public class Fail {
    private Integer id;
    // 试题类型
    private Type type;
    // 试题id
    private String questionId;
    // 用户
    private User user;

    public Fail() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Type getType() {
        return type;
    }

    public void setType(Type type) {
        this.type = type;
    }

    public String getQuestionId() {
        return questionId;
    }

    public void setQuestionId(String questionId) {
        this.questionId = questionId;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "Fail{" +
                "id=" + id +
                ", type=" + type +
                ", questionId='" + questionId + '\'' +
                ", user=" + user +
                '}';
    }
}
