package com.question.dao;

import com.question.beans.JudgementQuestion;
import com.question.beans.Paper;

import java.util.List;

public interface IJudgementQuestionDao {
    void insertJudgementQuestion(JudgementQuestion judgementQuestion);
    JudgementQuestion selectJudgementQuestionById(int id);
    List<JudgementQuestion> listJudgementQuestionUnderPaper(Paper paper);
}
