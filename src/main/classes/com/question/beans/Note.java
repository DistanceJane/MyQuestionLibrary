package com.question.beans;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 笔记实体类
 */
public class Note {
    private Integer id;
    // 试题类型
    private Integer typeId;
    // 题目id
    private Integer questionId;
    // 内容
    private String content;
    // 获赞数
    private Integer like;
    // 发布时间
    private Date time;
    // 发布用户
    private Integer userId;
    // 发布用户
    private User user;
    // 所属的章节
    private Chapter chapter;

    public Note() {
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

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Integer getLike() {
        return like;
    }

    public void setLike(Integer like) {
        this.like = like;
    }

    public String getTime() {
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return dateFormat.format(time);
    }

    public void setTime(Date time) {
        this.time = time;
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

    public Chapter getChapter() {
        return chapter;
    }

    public void setChapter(Chapter chapter) {
        this.chapter = chapter;
    }

    @Override
    public String toString() {
        return "Note{" +
                "id=" + id +
                ", typeId=" + typeId +
                ", questionId=" + questionId +
                ", content='" + content + '\'' +
                ", like=" + like +
                ", time=" + time +
                ", user=" + user +
                '}';
    }
}
