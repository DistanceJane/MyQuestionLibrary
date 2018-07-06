package com.question.dao;

import com.question.beans.Chapter;
import com.question.beans.Judgement;

import java.util.List;

public interface IJudgementDao {
    void insertJudgement(Judgement judgement);
    void deleteJudgement(int id);
    void updateJudgement(Judgement judgement);
    Judgement selectJudgementById(int id);
    List<Judgement> listJudgementUnderChapter(Chapter chapter);
    List<Judgement> listJudgementByTitle(String title);
}
