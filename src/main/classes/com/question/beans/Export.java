package com.question.beans;

import java.util.Date;
/**
 * 试卷导出日志
 */
public class Export {
    private Integer id;
    // 所打印的试卷
    private Paper paper;
    // 导出时间
    private Date exportTime;
    // 用户
    private User user;

    public Export() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Paper getPaper() {
        return paper;
    }

    public void setPaper(Paper paper) {
        this.paper = paper;
    }

    public Date getExportTime() {
        return exportTime;
    }

    public void setExportTime(Date exportTime) {
        this.exportTime = exportTime;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "Export{" +
                "id=" + id +
                ", paper=" + paper +
                ", exportTime=" + exportTime +
                ", user=" + user +
                '}';
    }
}
