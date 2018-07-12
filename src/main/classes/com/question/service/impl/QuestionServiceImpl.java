package com.question.service.impl;

import com.question.beans.*;
import com.question.dao.IQuestionDao;
import com.question.dao.ISubjectDao;
import com.question.dao.IUserDao;
import com.question.service.IQuestionService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service("questionService")
public class QuestionServiceImpl implements IQuestionService {
    @Resource(name = "IQuestionDao")
    private IQuestionDao questionDao;

    @Resource(name = "ISubjectDao")
    private ISubjectDao subjectDao;

    @Resource(name = "IUserDao")
    private IUserDao userDao;

    @Override
    @Transactional
    public void addChoice(Choice choice){
        questionDao.insertChoice(choice);
    }

    @Override
    @Transactional
    public Question showQuestion(int type, int id) {
        Question question = null;
        if(type == 1){
            question = questionDao.selectChoiceById(id);
        } else if (type == 2){
            question = questionDao.selectJudgementById(id);
        } else {
            question = questionDao.selectShorterById(id);
        }
        return question;
    }

    @Override
    @Transactional
    public Choice showChoiceDetail(int id) {
        Choice choice = questionDao.selectChoiceById(id);
        // 获取该选择题的试题列表
        List<ChoiceOption> options = questionDao.listChoiceOptionUnderChoice(choice);
        choice.setOptions(options);
        // 获取试题的所属章节
        Chapter chapter = subjectDao.selectChapterById(choice.getChapterId());
        choice.setChapter(chapter);
        // 获取该试题的录入员
        User user = userDao.selectUserById(choice.getUserId());
        choice.setUser(user);
        return choice;
    }

    @Override
    @Transactional
    public Judgement showJudgementDetail(int id) {
        Judgement judgement = questionDao.selectJudgementById(id);
        // 获取试题的章节
        Chapter chapter = subjectDao.selectChapterById(judgement.getChapterId());
        judgement.setChapter(chapter);
        // 获取试题的录入人员
        return judgement;
    }

    @Override
    @Transactional
    public Shorter showShorterDetail(int id) {
        Shorter shorter = questionDao.selectShorterById(id);
        // 获取试题的章节
        Chapter chapter = subjectDao.selectChapterById(shorter.getChapterId());
        shorter.setChapter(chapter);
        // 获取试题的录入人员
        User user = userDao.selectUserById(shorter.getUserId());
        shorter.setUser(user);
        return shorter;
    }

    @Override
    public void addJudgement(Judgement judgement) {

    }

    @Override
    public void addShorter(Shorter shorter) {

    }

    @Override
    @Transactional
    public void addOptionForChoice(ChoiceOption choiceOption) {
        questionDao.insertChoiceOption(choiceOption);
    }
}
