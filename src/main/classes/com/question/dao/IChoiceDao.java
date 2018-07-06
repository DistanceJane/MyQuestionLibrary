package com.question.dao;

import com.question.beans.Chapter;
import com.question.beans.Choice;

import java.util.List;

public interface IChoiceDao {
    void insertChoice(Choice choice);
    void deleteChoice(int id);
    void updateChoice(Choice choice);
    Choice selectChoiceById(int id);
    List<Choice> listChoiceUnderChapter(Chapter chapter);
    List<Choice> listChoiceByTitle(String title);
}
