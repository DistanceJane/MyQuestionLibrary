package com.question.beans;

/**
 * 错题实体类
 */
public class Fail {
    private Integer id;
    // 试题类型
    private Integer typeId;
    // 试题id
    private Integer questionId;
    // 用户
    private User user;
    // 用户id
    private Integer userId;

    public Fail() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getTypeId() {
        return typeId;
    }

    public void setTypeId(Integer typeId) {
        this.typeId = typeId;
    }

    public Integer getQuestionId() {
        return questionId;
    }

    public void setQuestionId(Integer questionId) {
        this.questionId = questionId;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    @Override
    public String toString() {
        return "Fail{" +
                "id=" + id +
                ", typeId=" + typeId +
                ", questionId='" + questionId + '\'' +
                ", user=" + user +
                '}';
    }
}
