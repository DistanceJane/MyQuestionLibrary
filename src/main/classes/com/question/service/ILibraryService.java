package com.question.service;

import com.question.beans.Library;
import com.question.beans.User;

import java.util.List;

public interface ILibraryService {

    /**
     * 获取用户的试题库列表
     * @param user
     * @return
     */
    List<Library> listUserLibrary(User user);


    /**
     * 统计用户题库的总通过数、错误数
     * @param user
     * @return
     */
    Library countLibrary(User user);

    /**
     * 通过用户和学科id查找试题库信息
     * @param id
     * @param id1
     * @return
     */
    Library selectLibraryByUserAndSubject(Integer id, Integer id1);
}
