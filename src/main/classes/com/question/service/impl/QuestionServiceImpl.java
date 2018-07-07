package com.question.service.impl;

import com.question.beans.Choice;
import com.question.dao.IQuestionDao;
import com.question.service.IQuestionService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

@Service("questionService")
public class QuestionServiceImpl implements IQuestionService {
    @Resource(name = "IQuestionDao")
    private IQuestionDao questionDao;

    @Transactional
    public void addChoice(Choice choice){
        questionDao.insertChoice(choice);
    }
}
