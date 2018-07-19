package com.question.beans;

/**
 * 章节实体：学科之下划分章节
 */
public class Chapter {
    private Integer id;
    // 章节名称
    private String chapterName;
    // 所属学科
    private Subject subject;
    // 所属学科id
    private Integer subjectId;

    // 题目总数
    private Integer sumQuestion;


    public Chapter() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getChapterName() {
        return chapterName;
    }

    public void setChapterName(String chapterName) {
        this.chapterName = chapterName;
    }

    public Subject getSubject() {
        return subject;
    }

    public void setSubject(Subject subject) {
        this.subject = subject;
    }

    public Integer getSubjectId() {
        return subjectId;
    }

    public void setSubjectId(Integer subjectId) {
        this.subjectId = subjectId;
    }

    public Integer getSumQuestion() {
        return sumQuestion;
    }

    public void setSumQuestion(Integer sumQuestion) {
        this.sumQuestion = sumQuestion;
    }


    @Override
    public String toString() {
        return "Chapter{" +
                "id=" + id +
                ", chapterName='" + chapterName + '\'' +
                ", subjectId=" + subjectId +
                ", sumQuestion=" + sumQuestion +
                '}';
    }
}
