package com.question.service;

import com.question.beans.Chapter;
import com.question.beans.Subject;

import java.util.List;

public interface ISubjectService {

    /**
     * 获取学科下的所有章节
     * @param subject
     * @return
     */
    List<Chapter> listChapterUnderSubject(Subject subject);

    /**
     * 获取所有学科信息
     * @return
     */
    List<Subject> listAllSubject();
}
