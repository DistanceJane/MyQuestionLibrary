package com.question.beans;

/**
 * 学科试题库实体类
 */
public class Library {
    private Integer id;
    // 所对应的学科
    private Subject subject;
    // 所对应的用户
    private User user;
    // 题目总数
    private Integer questionQuantity;
    // 通过数
    private Integer passQuantity;
    // 未通过数
    private Integer failQuantity;

    public Library() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Subject getSubject() {
        return subject;
    }

    public void setSubject(Subject subject) {
        this.subject = subject;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Integer getQuestionQuantity() {
        return questionQuantity;
    }

    public void setQuestionQuantity(Integer questionQuantity) {
        this.questionQuantity = questionQuantity;
    }

    public Integer getPassQuantity() {
        return passQuantity;
    }

    public void setPassQuantity(Integer passQuantity) {
        this.passQuantity = passQuantity;
    }

    public Integer getFailQuantity() {
        return failQuantity;
    }

    public void setFailQuantity(Integer failQuantity) {
        this.failQuantity = failQuantity;
    }

    @Override
    public String toString() {
        return "Library{" +
                "id=" + id +
                ", subject=" + subject +
                ", user=" + user +
                ", questionQuantity=" + questionQuantity +
                ", passQuantity=" + passQuantity +
                ", failQuantity=" + failQuantity +
                '}';
    }
}
