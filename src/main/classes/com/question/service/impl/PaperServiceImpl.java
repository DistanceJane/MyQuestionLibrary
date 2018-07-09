package com.question.service.impl;

import com.question.dao.IPaperQuestionDao;
import com.question.service.IPaperQuestionService;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;

@Service("paperQuestionService")
public class PaperQuestionServiceImpl implements IPaperQuestionService {

    @Resource(name = "IPaperQuestionDao")
    private IPaperQuestionDao paperQuestionDao;

}
