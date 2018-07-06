package com.question.dao;

import com.question.beans.ChoiceQuestion;
import com.question.beans.Paper;

import java.util.List;

public interface IChoiceQuestionDao {
    void insertChoiceQuestion(ChoiceQuestion choiceQuestion);
    ChoiceQuestion selectChoiceQuestionById(int id);
    List<ChoiceQuestion> listChoiceQuestionUnderPaper(Paper paper);
}
