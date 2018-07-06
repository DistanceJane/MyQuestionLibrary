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
    // 难度系数
    private Integer level;
    // 所属章节
    private Chapter chapter;
    // 录入来源
    private User user;

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

    @Override
    public String toString() {
        return "Choice{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", picture='" + picture + '\'' +
                ", level=" + level +
                ", chapter=" + chapter +
                ", user=" + user +
                '}';
    }
}
