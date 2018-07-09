package com.question.handlers;

import com.question.service.IQuestionService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import javax.annotation.Resource;

@Controller
@RequestMapping("/question")
public class QuestionController {

    @Resource(name = "questionService")
    private IQuestionService questionService;


    /**
     * 查看题目详情
     * @return
     */
    @RequestMapping("/detail.do")
    public ModelAndView showDetail(){

        return new ModelAndView("/WEB-INF/pages/failDetail.jsp");
    }
}
