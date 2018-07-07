package com.question.dao;

import com.question.beans.Chapter;
import com.question.beans.Subject;

import java.util.List;

public interface ISubjectDao {
    /**
     * 新增一门学科
     * @param subject
     */
    void insertSubject(Subject subject);

    /**
     * 删除一门学科
     * @param id
     */
    void deleteSubject(int id);

    /**
     * 更新一门学科信息
     * @param subject
     */
    void updateSubject(Subject subject);

    /**
     * 根据id查询学科信息
     * @param id
     * @return
     */
    Subject selectSubjectById(int id);

    /**
     * 获取所有的学科信息
     * @return
     */
    List<Subject> listSubject();


    /**
     * 新增加一个章节
     * @param chapter
     */
    void insertChapter(Chapter chapter);

    /**
     * 删除一个章节
     * @param id
     */
    void deleteChapter(int id);

    /**
     * 更新某个章节信息
     * @param chapter
     */
    void updateChapter(Chapter chapter);

    /**
     * 根据id查询某个章节信息
     * @param id
     * @return
     */
    Chapter selectChapterById(int id);

    /**
     * 获取某个学科下的所有章节
     * @param subject
     * @return
     */
    List<Chapter> listChapterUnderSubject(Subject subject);
}
