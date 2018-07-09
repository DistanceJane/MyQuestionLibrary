package com.question.beans;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 试卷实体类
 */
public class Paper {
    private Integer id;
    // 创建时间
    private Date createTime;
    // 所属试题库id
    private Integer libraryId;
    // 所属试题库
    private Library library;
    // 完成状态
    private Integer state;
    // 得分
    private Integer score;
    // 所属用户
    private User user;
    // 所属用户id
    private Integer userId;

    public Paper() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCreateTime() {
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return dateFormat.format(createTime);
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Integer getLibraryId() {
        return libraryId;
    }

    public void setLibraryId(Integer libraryId) {
        this.libraryId = libraryId;
    }

    public Library getLibrary() {
        return library;
    }

    public void setLibrary(Library library) {
        this.library = library;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
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
        return "Paper{" +
                "id=" + id +
                ", createTime=" + createTime +
                ", libraryId=" + libraryId +
                ", state=" + state +
                ", score=" + score +
                ", userId=" + userId +
                '}';
    }
}
