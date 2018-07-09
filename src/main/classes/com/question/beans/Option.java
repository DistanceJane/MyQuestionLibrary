package com.question.beans;

/**
 * 选择题的选项实体：如 A：xxxxxxxxxx
 */
public class Option {
    private Integer id;
    // 选项头，如A、B、C、D
    private String header;
    // 选项内容
    private String context;
    // 是否是正确选项
    private Integer correct;

    // 所对应的选择题
    private Integer choiceId;
    // 所对应的选择题
    private Choice choice;

    public Option() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getHeader() {
        return header;
    }

    public void setHeader(String header) {
        this.header = header;
    }

    public String getContext() {
        return context;
    }

    public void setContext(String context) {
        this.context = context;
    }

    public Integer getCorrect() {
        return correct;
    }

    public void setCorrect(Integer correct) {
        this.correct = correct;
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

    @Override
    public String toString() {
        return "Option{" +
                "id=" + id +
                ", header='" + header + '\'' +
                ", context='" + context + '\'' +
                ", correct=" + correct +
                ", choiceId=" + choiceId +
                '}';
    }
}
