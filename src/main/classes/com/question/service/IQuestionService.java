package com.question.service;

import com.question.beans.*;

import java.util.List;

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

    /**
     * 根据章节列表获取其所对应的试题集
     * @param chapterId
     * @return
     */
    List<Choice> listChoiceByChapterId(int[] chapterId);

    /**
     * 获取满足选择题难度和所属章节的选择题的id列表
     * @param level
     * @param chapterId
     * @return
     */
    List<Integer> listChoiceByChapterIdAndLevel(int level, int[] chapterId);

    /**
     * 获取满足选择题难度和所属章节的判断题的id列表
     * @param level
     * @param chapterId
     * @return
     */
    List<Integer> listJudgementByChapterAndLevel(int level, int[] chapterId);

    /**
     * 获取满足选择题难度和所属章节的简答题的id列表
     * @param level
     * @param chapterId
     * @return
     */
    List<Integer> listShorterByChapterIdAndLevel(int level, int[] chapterId);

    /**
     * 对id进行筛选， 获取满足所选章节条件的选择题
     * @param chapterId
     * @param failChoiceIdList
     * @return
     */
    List<Integer> filterChoiceIdListByChapter(int[] chapterId, List<Integer> failChoiceIdList);

    /**
     * 对id进行筛选， 获取满足所选章节条件的判断题
     * @param chapterId
     * @param failJudgementIdList
     * @return
     */
    List<Integer> filterJudgementIdListByChapter(int[] chapterId, List<Integer> failJudgementIdList);


    /**
     * 对id进行筛选， 获取满足所选条件的简答题
     * @param chapterId
     * @param failShorterIdList
     * @return
     */
    List<Integer> filterShorterIdListByChapter(int[] chapterId, List<Integer> failShorterIdList);

    /**
     * 根据IdList查询返回选择题列表
     * @param baseChoiceIdList
     * @return
     */
    List<Choice> listChoiceByIdList(List<Integer> baseChoiceIdList);


    /**
     * 根据IdList查询返回判断题列表
     * @param baseJudgementIdList
     * @return
     */
    List<Judgement> listJudgementByIdList(List<Integer> baseJudgementIdList);

    /**
     * 根据IdList查询返回简答题列表
     * @param baseShorterIdList
     * @return
     */
    List<Shorter> listShorterByIdList(List<Integer> baseShorterIdList);

    /**
     * 根据id获取选择题选项的内容。
     * @param optionId
     * @return
     */
    ChoiceOption showOptionById(int optionId);
}
