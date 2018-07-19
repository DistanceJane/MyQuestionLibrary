package com.question.beans;

import java.util.List;
import java.util.Set;

/**
 * 学科实体，是各类试题库的学科
 */
public class Subject {
    private Integer id;
    // 学科名称
    private String subjectName;

    private List<Chapter> chapters;
    // 是否导入
    private int export;

    public Subject() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSubjectName() {
        return subjectName;
    }

    public void setSubjectName(String subjectName) {
        this.subjectName = subjectName;
    }

    public List<Chapter> getChapters() {
        return chapters;
    }

    public void setChapters(List<Chapter> chapters) {
        this.chapters = chapters;
    }

    public int getExport() {
        return export;
    }

    public void setExport(int export) {
        this.export = export;
    }

    @Override
    public String toString() {
        return "Subject{" +
                "id=" + id +
                ", subjectName='" + subjectName + '\'' +
                '}';
    }
}
