package com.question.beans;

import java.util.Date;

/**
 * 笔记实体类
 */
public class Note {
    private Integer id;
    // 试题类型
    private Type type;
    // 题目id
    private Integer questionId;
    // 内容
    private String content;
    // 获赞数
    private Integer like;
    // 发布时间
    private Date dataTime;
    // 发布用户
    private User user;

    public Note() {
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

    public Date getDataTime() {
        return dataTime;
    }

    public void setDataTime(Date dataTime) {
        this.dataTime = dataTime;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "Note{" +
                "id=" + id +
                ", type=" + type +
                ", questionId=" + questionId +
                ", content='" + content + '\'' +
                ", like=" + like +
                ", dataTime=" + dataTime +
                ", user=" + user +
                '}';
    }
}
