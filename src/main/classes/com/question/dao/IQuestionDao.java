package com.question.dao;

import com.question.beans.*;

import java.util.List;
import java.util.Map;

public interface IQuestionDao {

    /**
     * 录入一道选择题
     * @param choice
     */
    void insertChoice(Choice choice);

    /**
     * 根据id删除一道选择题
     * @param id
     */
    void deleteChoice(int id);

    /**
     * 更新某一个选择题
     * @param choice
     */
    void updateChoice(Choice choice);

    /**
     * 根据id查询某一个选择题
     * @param id
     * @return
     */
    Choice selectChoiceById(int id);

    /**
     * 获取某个章节下的所有选择题
     * @param chapter
     * @return
     */
    List<Choice> listChoiceUnderChapter(Chapter chapter);

    /**
     * 根据题目模糊搜索试题
     * @param title
     * @return
     */
    List<Choice> listChoiceByTitle(String title);


    /**
     * 添加某个选择题的一个选项
     * @param option
     */
    void insertChoiceOption(ChoiceOption option);

    /**
     * 删除某个选择题的一个选项
     * @param id
     */
    void deleteChoiceOption(int id);

    /**
     * 修改某个选择题的某个选项
     * @param option
     */
    void updateChoiceOption(ChoiceOption option);

    /**
     * 根据id查询某个选择题的选项
     * @param id
     * @return
     */
    ChoiceOption selectChoiceOptionById(int id);

    /**
     * 获取某个试题下的所有选项
     * @param choice
     * @return
     */
    List<ChoiceOption> listChoiceOptionUnderChoice(Choice choice);

    /**
     * 录入一道判断题
     * @param judgement
     */
    void insertJudgement(Judgement judgement);

    /**
     * 根据删除一道判断题
     * @param id
     */
    void deleteJudgement(int id);

    /**
     * 更新一道判断题
     * @param judgement
     */
    void updateJudgement(Judgement judgement);

    /**
     * 根据id查询某道判断题
     * @param id
     * @return
     */
    Judgement selectJudgementById(int id);

    /**
     * 获取某个章节下的所有判断题
     * @param chapter
     * @return
     */
    List<Judgement> listJudgementUnderChapter(Chapter chapter);

    /**
     * 根据题目模糊查询判断题
     * @param title
     * @return
     */
    List<Judgement> listJudgementByTitle(String title);


    /**
     * 录入一道简答题
     * @param shorter
     */
    void insertShorter(Shorter shorter);

    /**
     * 根据删除一道简答题
     * @param id
     */
    void deleteShorter(int id);

    /**
     * 更新一道简答题
     * @param shorter
     */
    void updateShorter(Shorter shorter);

    /**
     * 根据id查询某个简答题
     * @param id
     * @return
     */
    Shorter selectShorterById(int id);

    /**
     * 获取某个章节下的所有简答题
     * @param chapter
     * @return
     */
    List<Shorter> listShorterUnderChapter(Chapter chapter);

    /**
     * 根据题目模糊搜索简答题
     * @param title
     * @return
     */
    List<Shorter> listShorterByTitle(String title);

    /**
     * 根据章节号数组来获取其下的选择题试题集
     * @param chapterId
     * @return
     */
    List<Choice> listChoiceByChapterId(int[] chapterId);

    /**
     * 根据章节号数组获取其下的判断题试题集
     * @param chapterId
     * @return
     */
    List<Judgement> listJudgementByChapterId(int[] chapterId);

    /**
     * 根据章节号数组获取其下的简答题试题集
     * @param chapterId
     * @return
     */
    List<Shorter> listShorterBuChapterId(int[] chapterId);

    /**
     * 根据章节和题目难度获取选择题的id集
     * @param map
     * @return
     */
    List<Integer> fetchChoiceIdListByChapterAndLevel(Map<String,Object> map);

    /**
     * 根据章节和题目难度获取判断题的id集
     * @param map
     * @return
     */
    List<Integer> fetchJudgementIdListByChapterAndLevel(Map<String,Object> map);

    /**
     * 根据章节和题目难度获取简答题的id集
     * @param map
     * @return
     */
    List<Integer> fetchShorterIdListByChapterAndLevel(Map<String,Object> map);
}
