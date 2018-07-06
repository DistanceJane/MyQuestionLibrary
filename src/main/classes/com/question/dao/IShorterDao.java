package com.question.dao;

import com.question.beans.Chapter;
import com.question.beans.Shorter;

import java.util.List;

public interface IShorterDao {
    void insertShorter(Shorter shorter);
    void deleteShorter(int id);
    void updateShorter(Shorter shorter);
    Shorter selectShorterById(int id);
    List<Shorter> listShorterUnderChapter(Chapter chapter);
    List<Shorter> listShorterByTitle(String title);
}
