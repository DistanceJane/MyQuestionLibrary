package com.question.beans;

/**
 * 学科试题库实体类
 */
public class Library {
    private Integer id;
    // 所对应的学科id
    private Integer subjectId;
    // 所对应的学科
    private Subject subject;
    // 所对应的用户
    private Integer userId;
    // 所对应的用户
    private User user;
    // 题目总数
    private Integer questionQuantity;
    // 通过题数
    private Integer passQuantity;
    // 错误题数
    private Integer failQuantity;
    // 进度
    private Integer progress;
    // 做题数
    private Integer doneQuantity;

    public Library() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getSubjectId() {
        return subjectId;
    }

    public void setSubjectId(Integer subjectId) {
        this.subjectId = subjectId;
    }

    public Subject getSubject() {
        return subject;
    }

    public void setSubject(Subject subject) {
        this.subject = subject;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
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

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Integer getProgress() {
        return passQuantity * 100 / questionQuantity;
    }

    public void setProgress(Integer progress) {
        this.progress = progress;
    }

    /**
     * 做题数等于通过数加错误数
     * @return
     */
    public Integer getDoneQuantity() {
        return passQuantity + failQuantity;
    }

    public void setDoneQuantity(Integer doneQuantity) {
        this.doneQuantity = doneQuantity;
    }

    @Override
    public String toString() {
        return "Library{" +
                "id=" + id +
                ", subjectId=" + subjectId +
                ", userId=" + userId +
                ", questionQuantity=" + questionQuantity +
                ", passQuantity=" + passQuantity +
                ", failQuantity=" + failQuantity +
                '}';
    }
}
