package com.question.beans;

/**
 * 选择题的选项实体：如 A：xxxxxxxxxx
 */
public class ChoiceOption {
    private Integer id;
    // 选项头，如A、B、C、D
    private String header;
    // 选项内容
    private String content;
    // 是否是正确选项
    private Integer correct;

    // 所对应的选择题
    private Integer choiceId;
    // 所对应的选择题
    private Choice choice;

    public ChoiceOption() {
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

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
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
        return "ChoiceOption{" +
                "id=" + id +
                ", header='" + header + '\'' +
                ", content='" + content + '\'' +
                ", correct=" + correct +
                ", choiceId=" + choiceId +
                '}';
    }
}
