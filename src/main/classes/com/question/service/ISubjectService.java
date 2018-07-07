package com.question.service;

import com.question.beans.Chapter;
import com.question.beans.Subject;

import java.util.List;

public interface ISubjectService {

    List<Chapter> listChapterUnderSubject(Subject subject);
}
