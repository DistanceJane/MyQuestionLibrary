package com.question.service;

import com.question.beans.*;

import java.util.List;

public interface IPaperService {
    List<Paper> ListUserPaper(User user);

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
}
