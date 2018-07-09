package com.question.dao;

import com.question.beans.*;

import java.util.List;

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
     * @param paper
     * @return
     */
    List<ChoiceQuestion> listChoiceQuestionUnderPaper(Paper paper);

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
     * @param paper
     * @return
     */
    List<JudgementQuestion> listJudgementQuestionUnderPaper(Paper paper);


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
     * @param paper
     * @return
     */
    List<ShorterQuestion> listShorterQuestionUnderPaper(Paper paper);


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
    Fail selectFailBuId(int id);

    /**
     * 获取某一用户的所有错题集
     * @param user
     * @return
     */
    List<Fail> listFailUnderUser(User user);
}
