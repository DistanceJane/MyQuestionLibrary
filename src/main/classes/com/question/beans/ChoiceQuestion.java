package com.question.beans;

/**
 * 试卷上的选择题实体类
 */
public class ChoiceQuestion {
    private Integer id;
    //所对应的选择题id
    private Integer choiceId;
    //所对应的选择题
    private Choice choice;
    // 记录用户的答案
    private String myAnswer;
    // 所属试卷
    private Paper paper;
    // 所属试卷
    private Integer paperId;
    // 分数
    private Integer score;


    public ChoiceQuestion() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getChoiceId() {
        return choiceId;
    }

    public void setChoiceId(Integer choiceId) {
        this.choiceId = choiceId;
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

    public Integer getPaperId() {
        return paperId;
    }

    public void setPaperId(Integer paperId) {
        this.paperId = paperId;
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }


    @Override
    public String toString() {
        return "ChoiceQuestion{" +
                "id=" + id +
                ", choiceId=" + choiceId +
                ", myAnswer='" + myAnswer + '\'' +
                ", paperId=" + paperId +
                ", score=" + score +
                '}';
    }
}
