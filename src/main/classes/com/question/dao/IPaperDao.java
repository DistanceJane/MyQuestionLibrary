package com.question.dao;

import com.question.beans.*;

import java.util.List;
import java.util.Map;

public interface IPaperDao {

    /**
     * 新增加一份试卷记录
     * @param paper
     */
    void insertPaper(Paper paper);

    /**
     * 根据id删除试卷记录
     * @param id
     */
    void deletePaper(int id);

    /**
     * 更新试卷记录
     * @param paper
     */
    void updatePaper(Paper paper);

    /**
     * 根据id查询试卷记录
     * @param id
     * @return
     */
    Paper selectPaperById(int id);

    /**
     * 获取某学科下的试卷记录
     * @param subject
     * @return
     */
    List<Paper> listPaperUnderSubject(Subject subject);

    /**
     * 获取用户的所有试卷
     * @param user
     * @return
     */
    List<Paper> listPaperUnderUser(User user);

    /**
     * 新增一道试卷上的选择题
     * @param choiceQuestion
     */
    void insertChoiceQuestion(ChoiceQuestion choiceQuestion);

    /**
     * 根据id查询试卷上的选择题
     * @param id
     * @return
     */
    ChoiceQuestion selectChoiceQuestionById(int id);

    /**
     * 列举某张试卷上的所有选择题
     * @param paperId
     * @return
     */
    List<ChoiceQuestion> listChoiceQuestionUnderPaper(int paperId);

    /**
     * 新增一道试卷上的判断题
     * @param judgementQuestion
     */
    void insertJudgementQuestion(JudgementQuestion judgementQuestion);

    /**
     * 根据id查询试卷上的判断题
     * @param id
     * @return
     */
    JudgementQuestion selectJudgementQuestionById(int id);

    /**
     * 获取试卷上的所有判断题
     * @param paperId
     * @return
     */
    List<JudgementQuestion> listJudgementQuestionUnderPaper(int paperId);


    /**
     * 新增一道试卷上的简答题
     * @param shorterQuestion
     */
    void insertShorterQuestion(ShorterQuestion shorterQuestion);

    /**
     * 根据id查询试卷上的简答题
     * @param id
     * @return
     */
    ShorterQuestion selectShorterQuestionById(int id);


    /**
     * 获取某一试卷上的所有简答题
     * @param paperId
     * @return
     */
    List<ShorterQuestion> listShorterQuestionUnderPaper(int paperId);


    /**
     * 添加一条错题记录
     * @param fail
     */
    void insertFail(Fail fail);

    /**
     * 删除一条错题记录
     * @param id
     */
    void deleteFail(int id);

    /**
     * 查询一道错题记录
     * @param id
     * @return
     */
    Fail selectFailById(int id);

    /**
     * 获取某一用户的所有错题集
     * @param user
     * @return
     */
    List<Fail> listFailUnderUser(User user);


    /**
     * 获取用户的错题集某一类型试题的id集
     * @param map
     * @return
     */
    List<Integer> fetchQuestionIdListByUser(Map<String,Object> map);

    /**
     * 修改选择题的答案
     * @param choiceQuestion
     */
    void updateChoiceQuestionAnswer(ChoiceQuestion choiceQuestion);

    /**
     * 修改填空题的答案
     * @param judgementQuestion
     */
    void updateJudgementQuestionAnswer(JudgementQuestion judgementQuestion);

    /**
     * 修改简答题的答案
     * @param shorterQuestion
     */
    void updateShorterQuestionAnswer(ShorterQuestion shorterQuestion);


}
