package com.question.beans;

import java.util.List;

/**
 * 选择题
 */
public class Choice extends Question{

    // 是否多选
    private Integer multiple;
    // 所属章节id
    private Integer chapterId;
    // 录入来源
    private Integer userId;
    // 选择题的所有选项
    private List<ChoiceOption> options;


    public Choice() {
    }

    public Integer getMultiple() {
        return multiple;
    }

    public void setMultiple(Integer multiple) {
        this.multiple = multiple;
    }

    public Integer getChapterId() {
        return chapterId;
    }

    public void setChapterId(Integer chapterId) {
        this.chapterId = chapterId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public List<ChoiceOption> getOptions() {
        return options;
    }

    public void setOptions(List<ChoiceOption> options) {
        this.options = options;
    }

    @Override
    public String toString() {
        return "Choice{" +
                "id=" + getId() +
                "multiple=" + multiple +
                ", chapterId=" + chapterId +
                ", userId=" + userId +
                '}';
    }
}
