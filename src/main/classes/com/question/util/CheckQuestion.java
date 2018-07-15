package com.question.util;

/**
 * 将试题在试卷中的id和试题库的id以及对错封装起来。
 */
public class CheckQuestion {
    // 试题编号
    private int questionNo;

    // 试卷中的题目的id
    private int id;

    // 该题是否正确
    private int correct;

    // 试题在试题库中的id
    private int questionId;

    // 试题的分数
    private int score;

    private int type;

    public CheckQuestion() {
    }

    public int getQuestionNo() {
        return questionNo;
    }

    public void setQuestionNo(int questionNo) {
        this.questionNo = questionNo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCorrect() {
        return correct;
    }

    public void setCorrect(int correct) {
        this.correct = correct;
    }

    public int getQuestionId() {
        return questionId;
    }

    public void setQuestionId(int questionId) {
        this.questionId = questionId;
    }


    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "CheckQuestion{" +
                "questionNo=" + questionNo +
                ", id=" + id +
                ", correct=" + correct +
                ", questionId=" + questionId +
                ", score=" + score +
                ", type=" + type +
                '}';
    }
}
