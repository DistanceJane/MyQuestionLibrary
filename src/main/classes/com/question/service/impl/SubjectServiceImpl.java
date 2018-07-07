package com.question.service.impl;

import com.question.beans.Chapter;
import com.question.beans.Subject;
import com.question.dao.ISubjectDao;
import com.question.service.ISubjectService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service("subjectService")
public class SubjectServiceImpl implements ISubjectService {

    @Resource(name = "ISubjectDao")
    private ISubjectDao subjectDao;

    @Override
    @Transactional
    public List<Chapter> listChapterUnderSubject(Subject subject) {
        List<Chapter> chapters = subjectDao.listChapterUnderSubject(subject);
        return chapters;
    }
}
