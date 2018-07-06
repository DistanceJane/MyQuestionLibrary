package com.question.dao;

import com.question.beans.Chapter;
import com.question.beans.Subject;

import java.util.List;

public interface IChapterDao {
    void insertChapter(Chapter chapter);
    void deleteChapter(int id);
    void updateChapter(Chapter chapter);
    Chapter selectChapterById(int id);
    List<Chapter> listChapterUnderSubject(Subject subject);
}
