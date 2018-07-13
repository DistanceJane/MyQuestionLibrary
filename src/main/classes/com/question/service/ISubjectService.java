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

    /**
     * 通过chapter查找学科信息
     * @param subjectId
     * @return
     */
    Subject showSubjectByChapter(Integer subjectId);

    /**
     * 通过choice茶渣章节信息
     * @param chapterId
     * @return
     */
    Chapter showChapterByChoice(Integer chapterId);
}
