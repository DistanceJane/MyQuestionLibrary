package com.question.beans;

/**
 * 判断题实体
 */
public class Judgement {
    private Integer id;
    // 题目
    private String title;
    // 答案
    private Integer answer;
    // 难度系数
    private Integer level;
    // 录入员
    private User user;

    public Judgement() {
    }

    @Override
    public String toString() {
        return "Judgement{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", answer=" + answer +
                ", level=" + level +
                ", user=" + user +
                '}';
    }
}
