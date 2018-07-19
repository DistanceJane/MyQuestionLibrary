package com.question.service;

import com.question.beans.*;
import com.question.util.CheckQuestion;

import java.util.List;
import java.util.Map;

public interface IPaperService {
    List<Paper> ListUserPaper(User user);

    /**
     * 添加一张试卷记录
     * @param paper
     */
    void addPaper(Paper paper);

    /**
     * 统计用户完成的试卷数
     * @param user
     * @return
     */
    int countPaperFinish(User user);


    /**
     * 获取用户的错题列表
     * @param user
     * @return
     */
    List<Question> listUserFailure(User user);

    /**
     * 查询试题信息
     * @param id
     * @return
     */
    ChoiceQuestion showChoiceQuestion(int id);

    /**
     * 查询判断题信息
     * @param id
     * @return
     */
    JudgementQuestion showJudgementQuestion(int id);

    /**
     * 查询简答题信息
     * @param id
     * @return
     */
    ShorterQuestion showShorterQuestion(int id);

    /**
     * 查询个人的选择题的错题id集
     * @param id
     * @return
     */
    List<Integer> listFailChoiceUnderUser(Integer id);

    /**
     * 查询个人的判断题的错题id集
     * @param id
     * @return
     */
    List<Integer> listFailJudgementUnderUser(Integer id);

    /**
     * 查询个人的简答题的错题id集
     */
    List<Integer> listFailShorterUnderUser(Integer id);

    /**
     * 从所有满足条件的选择题中抽取number个组装试卷
     * @param choices
     * @param number
     * @return
     */
    List<Choice> assembleChoiceUnderPaper(List<Choice> choices, int number);


    /**
     * 从所有满足条件的判断题中抽取number个组装成卷
     * @param judgements
     * @param number
     * @return
     */
    List<Judgement> assembleJudgementUnderPaper(List<Judgement> judgements, int number);

    /**
     * 从所有满足条件的简答题中抽取number个组装成卷
     * @param shorts
     * @param number
     * @return
     */
    List<Shorter> assembleShorterUnderPaper(List<Shorter> shorts, int number);

    /**
     * 将抽取的选择题题记录在试卷上
     * @param tempChoices
     * @param number
     * @return
     */
    void enteringChoiceQuestionIntoPaper(List<Choice> tempChoices, int number, int paperId);

    /**
     * 将抽取的判断题记录在试卷上
     * @param tempJudgements
     * @param number
     * @return
     */
    void enteringJudgementQuestionIntoPaper(List<Judgement> tempJudgements, int number, int paperId);


    /**
     * 将抽取的简答题记录在试卷上
     * @param tempShorts
     * @param number
     * @return
     */
    void enteringShorterQuestionIntoPaper(List<Shorter> tempShorts, int number, int paperId);

    /**
     * 获取某张试卷下的所有选择题
     * @param paperId
     * @return
     */
    List<ChoiceQuestion> listChoiceQuestionUnderPaper(int paperId);

    /**
     * 获取某张试卷下的所有判断题
     * @param paperId
     * @return
     */
    List<JudgementQuestion> listJudgementQuestionUnderPaper(int paperId);


    /**
     * 获取某张试卷下的所有简答题
     * @param paperId
     * @return
     */
    List<ShorterQuestion> listShorterQuestionUnderPaper(int paperId);

    /**
     * 将选择题id与该题目在个人题目记录的id封装打包。
     * @param choiceQuestions
     * @return
     */
    Map<Integer,Integer> mapChoiceQuestionId(List<ChoiceQuestion> choiceQuestions);

    /**
     * 将判断id与该题目在个人题目记录的id封装打包。
     * @param judgementQuestions
     * @return
     */
    Map<Integer,Integer> mapJudgementQuestionId(List<JudgementQuestion> judgementQuestions);

    /**
     * 将简答题id与该题目在个人题目记录的id封装打包。
     * @param shorterQuestions
     * @return
     */
    Map<Integer,Integer> mapShorterQuestionId(List<ShorterQuestion> shorterQuestions);

    /**
     * 检验选择题的答案是否正确
     * @param choiceQuestions
     * @return
     */
    List<CheckQuestion> checkChoiceQuestionUnderPaper(List<ChoiceQuestion> choiceQuestions);

    /**
     * 检验判断题的答案是否正确
     * @param judgementQuestions
     * @return
     */
    List<CheckQuestion> checkJudgementQuestionUnderPaper(List<JudgementQuestion> judgementQuestions);

    /**
     * 检验简答题的答案是否正确
     * @param shorterQuestions
     * @return
     */
    List<CheckQuestion> checkShorterQuestionPaper(List<ShorterQuestion> shorterQuestions);

    /**
     * 提交选择题答案
     * @param choiceQuestion
     */
    void commitChoiceAnswer(ChoiceQuestion choiceQuestion);

    /**
     * 提交判断题答案
     * @param judgementQuestion
     */
    void commitJudgementAnswer(JudgementQuestion judgementQuestion);

    /**
     * 提交简答题答案
     * @param shorterQuestion
     */
    void commitShorterAnswer(ShorterQuestion shorterQuestion);

    /**
     * 提交试卷验证答案
     * @param paper
     */
    void commitPaper(Paper paper);

    /**
     * 获取试卷信息
     * @param paperId
     * @return
     */
    Paper showPaperDetail(int paperId);

    /**
     * 统计试卷得分
     * @param checkChoiceQuestionList
     * @return
     */
    int countPaperScore(List<CheckQuestion> checkChoiceQuestionList);

    /**
     * 统计试卷上做对的题目数
     * @param checkChoiceQuestionList
     * @return
     */
    int countPaperCorrectQuestion(List<CheckQuestion> checkChoiceQuestionList);

    /**
     * 将所有试题类型的验证答案进行合并
     * @param checkChoiceQuestionList
     * @param checkJudgementQuestionList
     * @param checkShorterQuestionList
     * @return
     */
    List<CheckQuestion> mergeCheckQuestionList(List<CheckQuestion> checkChoiceQuestionList, List<CheckQuestion> checkJudgementQuestionList, List<CheckQuestion> checkShorterQuestionList);

    /**
     * 获取试卷下的所有选择题
     * @param id
     * @return
     */
    List<ChoiceQuestion> showChoiceQuestionUnderPaper(int id);


    /**
     * 获取试卷下的所有判断题
     * @param id
     * @return
     */
    List<JudgementQuestion> showJudgementQuestionUnderPaper(int id);

    /**
     * 获取试卷下的所有简答题
     * @param id
     * @return
     */
    List<ShorterQuestion> showShorterQuestionUnderPaper(int id);

    /**
     * 添加错题
     * @param fail
     */
    void addFail(Fail fail);

    /**
     * 根据id查找试卷
     * @param paperId
     * @return
     */
    Paper selectPaperById(int paperId);
}
