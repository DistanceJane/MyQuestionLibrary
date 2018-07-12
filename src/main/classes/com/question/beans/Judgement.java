package com.question.beans;

/**
 * 判断题实体
 */
public class Judgement extends Question{

    private Integer answer;

    // 录入员id
    private Integer userId;
    // 录入员
    private User user;
    // 所属章节id
    private Integer chapterId;

    public Judgement() {
    }



    public Integer getAnswer() {
        return answer;
    }

    public void setAnswer(Integer answer) {
        this.answer = answer;
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
        return "Judgement{" +
                ", answer=" + answer +
                ", userId=" + userId +
                ", chapterId=" + chapterId +
                '}';
    }
}
