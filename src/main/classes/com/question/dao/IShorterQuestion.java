package com.question.dao;

import com.question.beans.Paper;
import com.question.beans.ShorterQuestion;

import java.util.List;

public interface IShorterQuestion {
    void insertShorterQuestion(ShorterQuestion shorterQuestion);
    ShorterQuestion selectShorterQuestionById(int id);
    List<ShorterQuestion> listShorterQuestionUnderPaper(Paper paper);
}
