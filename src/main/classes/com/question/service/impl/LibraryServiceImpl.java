package com.question.service.impl;

import com.question.beans.Chapter;
import com.question.beans.Library;
import com.question.beans.Subject;
import com.question.beans.User;
import com.question.dao.ILibraryDao;
import com.question.dao.ISubjectDao;
import com.question.service.ILibraryService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("libraryService")
public class LibraryServiceImpl implements ILibraryService {

    @Resource(name = "ILibraryDao")
    private ILibraryDao libraryDao;

    @Resource(name = "ISubjectDao")
    private ISubjectDao subjectDao;


    /**
     * 获取用户的试题库列表
     * @param user
     * @return
     */
    @Override
    @Transactional
    public List<Library> listUserLibrary(User user) {
        //获取用户所有的题库列表
       List<Library> libraries = libraryDao.listLibraryUnderUser(user);
       // 根据题库列表每一项获得对应的学科,然后将学科信息包装到试题库中
        for(Library library : libraries){
            Subject subject = subjectDao.selectSubjectById(library.getSubjectId());
            // 获取学科下对应的章节列表
            List<Chapter> chapters = subjectDao.listChapterUnderSubject(subject);
            subject.setChapters(chapters);
            library.setSubject(subject);
        }
       return libraries;
    }

    @Override
    @Transactional
    public Library countLibrary(User user){
        //获取用户所有的题库列表
        List<Library> libraries = libraryDao.listLibraryUnderUser(user);
        // 统计试题库总的通过数，错误数
        int sum = 0; // 题目总数
        int pass = 0; // 通过数
        int fail = 0; // 错误数
        for(Library library : libraries){
            sum = sum + library.getQuestionQuantity();
            pass = pass + library.getPassQuantity();
            fail = fail + library.getFailQuantity();
        }
        Library library = new Library();
        library.setPassQuantity(pass);
        library.setFailQuantity(fail);
        library.setQuestionQuantity(sum);
        return library;
    }

    @Override
    @Transactional
    public Library selectLibraryByUserAndSubject(Integer userId, Integer subjectId) {
        Map<String, Object> map = new HashMap<>();
        map.put("userId", userId);
        map.put("subjectId", subjectId);
        Library library = libraryDao.selectLibraryByUserAndSubject(map);
        return library;
    }

    @Override
    @Transactional
    public void addLibrary(Library library) {
        libraryDao.insertLibrary(library);
    }

    @Override
    @Transactional
    public void deleteLibrary(int libraryId) {
        libraryDao.deleteLibrary(libraryId);
    }




    @Override
    public void updateLibraryPassQuantity(Integer libraryId) {
        Library library = libraryDao.selectLibraryById(libraryId);
        library.setPassQuantity(library.getPassQuantity() + 1);
        libraryDao.updateLibrary(library);
    }

    @Override
    public void updateLibraryDoneQuantity(Integer libraryId, int shorterNum) {
        Library library = libraryDao.selectLibraryById(libraryId);
        library.setDoneQuantity(library.getDoneQuantity() + shorterNum);
        libraryDao.updateLibrary(library);
    }

    @Override
    @Transactional
    public Library selectLibraryById(Integer libraryId) {
        Library library = libraryDao.selectLibraryById(libraryId);
        return library;
    }
}
