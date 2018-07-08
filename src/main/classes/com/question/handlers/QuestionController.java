package com.question.handlers;

import com.question.service.IQuestionService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
@RequestMapping("/question")
public class QuestionController {

    @Resource(name = "questionService")
    private IQuestionService questionService;


}
