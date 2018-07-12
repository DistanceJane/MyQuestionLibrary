package com.question.service;

import com.question.beans.*;

public interface IQuestionService {


    /**
     * 根基试题类型和id查询试题信息
     * @param type
     * @param id
     * @return
     */
    Question showQuestion(int type, int id);

    /**
     * 查询选择题的所有详情
     * @param id
     * @return
     */
    Choice showChoiceDetail(int id);

    /**
     * 查询判断题的所有详情
     * @param id
     * @return
     */
    Judgement showJudgementDetail(int id);

    /**
     * 查询简答题的所有详情
     * @param id
     * @return
     */
    Shorter showShorterDetail(int id);


    /**
     * 录入选择题
     * @param choice
     */
    void addChoice(Choice choice);


    /**
     * 录入填空题
     * @param judgement
     */
    void addJudgement(Judgement judgement);

    /**
     * 录入简答题
     * @param shorter
     */
    void addShorter(Shorter shorter);

    /**
     * 录入选择题的选项答案
     * @param choiceOption
     */
    void addOptionForChoice(ChoiceOption choiceOption);
}
