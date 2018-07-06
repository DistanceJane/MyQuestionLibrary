package com.question.beans;

import java.util.Date;

/**
 * 试卷实体类
 */
public class Paper {
    private Integer id;
    // 创建时间
    private Date createTime;
    // 所属试题库
    private Library library;
    // 完成状态
    private Integer state;
    // 得分
    private Integer score;

    public Paper() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
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

    @Override
    public String toString() {
        return "Paper{" +
                "id=" + id +
                ", createTime=" + createTime +
                ", library=" + library +
                ", state=" + state +
                ", score=" + score +
                '}';
    }
}
