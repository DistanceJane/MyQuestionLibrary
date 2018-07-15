package com.question.service.impl;

import com.question.beans.Chapter;
import com.question.beans.Subject;
import com.question.dao.ISubjectDao;
import com.question.service.ISubjectService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
import java.util.Set;

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

    @Override
    public List<Subject> listAllSubject() {
        List<Subject> subjects = subjectDao.listSubject();
        for(Subject subject : subjects){
            List<Chapter> chapters = subjectDao.listChapterUnderSubject(subject);
            subject.setChapters(chapters);
        }
        return subjects;
    }

    @Override
    public Subject showSubjectByChapter(Integer subjectId) {
        Subject subject = subjectDao.selectSubjectById(subjectId);
        return subject;
    }

    @Override
    public Chapter showChapterByChoice(Integer chapterId) {
        Chapter chapter = subjectDao.selectChapterById(chapterId);
        return chapter;
    }

    @Override
    public Subject showSubjectDetail(int subjectId) {
        Subject subject = subjectDao.selectSubjectById(subjectId);
        return subject;
    }
}
