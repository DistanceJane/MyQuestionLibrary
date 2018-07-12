package com.question.beans;
/**
 * 简答题实体类
 */
public class Shorter extends Question{
    // 答案
    private String Answer;
    // 录入员id
    private Integer userId;
    // 录入员
    private User user;
    // 所属章节id
    private Integer chapterId;


    public Shorter() {
    }

    public String getAnswer() {
        return Answer;
    }

    public void setAnswer(String answer) {
        Answer = answer;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Integer getChapterId() {
        return chapterId;
    }

    public void setChapterId(Integer chapterId) {
        this.chapterId = chapterId;
    }


    @Override
    public String toString() {
        return "Shorter{" +
                ", Answer='" + Answer + '\'' +
                ", userId=" + userId +
                ", chapterId=" + chapterId +
                '}';
    }
}
