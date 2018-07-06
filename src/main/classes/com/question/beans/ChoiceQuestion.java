package com.question.beans;

/**
 * 试卷上的选择题实体类
 */
public class ChoiceQuestion {
    private Integer id;
    //所对应的选择题
    private Choice choice;
    // 记录用户的答案
    private String myAnswer;
    // 所属试卷
    private Paper paper;
    // 分数
    private Integer score;
    // 是否多选
    private Integer mutiple;

    public ChoiceQuestion() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Choice getChoice() {
        return choice;
    }

    public void setChoice(Choice choice) {
        this.choice = choice;
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

    public Integer getMutiple() {
        return mutiple;
    }

    public void setMutiple(Integer mutiple) {
        this.mutiple = mutiple;
    }

    @Override
    public String toString() {
        return "ChoiceQuestion{" +
                "id=" + id +
                ", choice=" + choice +
                ", myAnswer='" + myAnswer + '\'' +
                ", paper=" + paper +
                ", score=" + score +
                ", mutiple=" + mutiple +
                '}';
    }
}
