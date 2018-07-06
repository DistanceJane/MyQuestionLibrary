package com.question.beans;

/**
 * 试卷上的简答题实体类
 */
public class ShorterQuestion {
    private Integer id;
    // 所对应的题库中的简答题
    private Shorter shorter;
    // 记录用户的答案
    private String myAnswer;
    // 所对应的试卷
    private Paper paper;
    // 分数
    private Integer score;

    public ShorterQuestion() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Shorter getShorter() {
        return shorter;
    }

    public void setShorter(Shorter shorter) {
        this.shorter = shorter;
    }

    public String getMyAnswer() {
        return myAnswer;
    }

    public void setMyAnswer(String myAnswer) {
        this.myAnswer = myAnswer;
    }

    public Paper getPaper() {
        return paper;
    }

    public void setPaper(Paper paper) {
        this.paper = paper;
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }

    @Override
    public String toString() {
        return "ShorterQuestion{" +
                "id=" + id +
                ", shorter=" + shorter +
                ", myAnswer='" + myAnswer + '\'' +
                ", paper=" + paper +
                ", score=" + score +
                '}';
    }
}
