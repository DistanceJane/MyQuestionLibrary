package com.question.beans;

/**
 * 试卷中的判断题
 */
public class JudgementQuestion {
    private Integer id;
    // 所对应的题库中的判断题
    private Judgement judgement;
    // 记录用户的答案
    private Integer myAnswer;
    // 所来源的试卷
    private Paper paper;
    // 分数
    private Integer score;

    public JudgementQuestion() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Judgement getJudgement() {
        return judgement;
    }

    public void setJudgement(Judgement judgement) {
        this.judgement = judgement;
    }

    public Integer getMyAnswer() {
        return myAnswer;
    }

    public void setMyAnswer(Integer myAnswer) {
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
        return "JudgementQuestion{" +
                "id=" + id +
                ", judgement=" + judgement +
                ", myAnswer=" + myAnswer +
                ", paper=" + paper +
                ", score=" + score +
                '}';
    }
}
