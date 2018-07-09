package com.question.dao;

import com.question.beans.*;

import java.util.List;

public interface ILibraryDao {
    /**
     * 新添加一门学科的试题库
     * @param library
     */
    void insertLibrary(Library library);

    /**
     * 删除一门学科的试题库
     * @param id
     */
    void deleteLibrary(int id);

    /**
     * 更新学科试题库信息
     * @param library
     */
    void updateLibrary(Library library);

    /**
     * 根据Id查询学科试题库
     * @param id
     * @return
     */
    Library selectLibraryById(int id);

    /**
     * 根据名字迷糊查询到学科试题库
     * @param name
     * @return
     */
    List<Library> listLibraryByName(String name);

    /**
     * 获取用户的学科试题库列表
     * @param user
     * @return
     */
    List<Library> listLibraryUnderUser(User user);

    /**
     * 新增加一份试卷导出日志
     * @param export
     */
    void insertExport(Export export);

    /**
     * 根据删除试卷导出日志
     * @param id
     */
    void deleteExport(int id);

    /**
     * 根据id查询试卷导出日志
     * @param id
     * @return
     */
    Export selectExportById(int id);

    /** 获取用户的试卷导出日志
     *
     * @param user
     * @return
     */
    List<Export> listExportUnderUser(User user);
}
