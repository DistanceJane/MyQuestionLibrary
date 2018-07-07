package com.question.test;

import com.question.beans.Chapter;
import com.question.beans.Choice;
import com.question.beans.User;
import com.question.service.IQuestionService;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class QuestionServiceTest {

    private IQuestionService questionService;

    @Before
    public void setUp() throws Exception {
        ApplicationContext ac = new ClassPathXmlApplicationContext("com/question/resources/spring-*.xml");
        questionService = (IQuestionService) ac.getBean("questionService");
    }

    @Test
    public void TestAddChoice() {
        Choice choice = new Choice();
        Chapter chapter = new Chapter();
        User user = new User();
        user.setId(1);
        chapter.setId(1);
        choice.setChapter(chapter);
        choice.setTitle("aaaaa");
        choice.setUser(user);
    }
}
