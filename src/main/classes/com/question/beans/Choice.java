package com.question.beans;

/**
 * 选择题
 */
public class Choice {
    private Integer id;
    // 题目
    private String title;
    // 图片
    private String picture;
    // 是否多选
    private Integer multiple;
    // 难度系数
    private Integer level;
    // 所属章节
    private Chapter chapter;
    // 所属章节id
    private Integer chapterId;
    // 录入来源
    private User user;
    // 录入员id
    private Integer userId;


    public Choice() {
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

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
    }

    public Chapter getChapter() {
        return chapter;
    }

    public void setChapter(Chapter chapter) {
        this.chapter = chapter;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Integer getMultiple() {
        return multiple;
    }

    public void setMultiple(Integer multiple) {
        this.multiple = multiple;
    }

    public Integer getChapterId() {
        return chapterId;
    }

    public void setChapterId(Integer chapterId) {
        this.chapterId = chapterId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    @Override
    public String toString() {
        return "Choice{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", picture='" + picture + '\'' +
                ", level=" + level +
                ", chapterId=" + chapterId +
                ", user=Id" + userId +
                '}';
    }
}
