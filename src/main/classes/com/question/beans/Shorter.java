package com.question.beans;
/**
 * 简答题实体类
 */
public class Shorter {
    private Integer id;
    //  题目
    private String title;
    // 答案
    private String Answer;
    // 难度系数
    private Integer level;
    // 录入员id
    private Integer userId;
    // 录入员
    private User user;
    // 所属章节id
    private Integer chapterId;
    // 所属章节
    private Chapter chapter;

    public Shorter() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAnswer() {
        return Answer;
    }

    public void setAnswer(String answer) {
        Answer = answer;
    }

    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
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

    public Chapter getChapter() {
        return chapter;
    }

    public void setChapter(Chapter chapter) {
        this.chapter = chapter;
    }

    @Override
    public String toString() {
        return "Shorter{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", Answer='" + Answer + '\'' +
                ", level=" + level +
                ", userId=" + userId +
                ", chapterId=" + chapterId +
                '}';
    }
}
