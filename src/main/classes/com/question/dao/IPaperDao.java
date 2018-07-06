package com.question.dao;

import com.question.beans.Paper;
import com.question.beans.Subject;
import com.question.beans.User;

import java.util.List;

public interface IPaperDao {
    void insertPaper(Paper paper);
    void deletePaper(int id);
    void updatePaper(Paper paper);
    Paper selectPaperById(int id);
    List<Paper> listPaperUnderSubject(Subject subject);
    List<Paper> listPaperUnderUser(User user);
}
