package com.question.dao;

import com.question.beans.Subject;

import java.util.List;

public interface ISubjectDao {
    void insertSubject(Subject subject);
    void deleteSubject(int id);
    void updateSubject(Subject subject);
    Subject selectSubject(int id);
    List<Subject> listSubject();
}
