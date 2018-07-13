package com.question.test;

import com.question.beans.Chapter;
import com.question.beans.Choice;
import com.question.beans.User;
import com.question.service.IQuestionService;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

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

    @Test
    public void testAddChoice() {
        Choice choice = new Choice();
        choice.setTitle("aaaaaaaaaaaa");
        choice.setLevel(3);
        choice.setUserId(1);
        choice.setChapterId(1);
        questionService.addChoice(choice);
    }

    @Test
    public void testSelectChoiceUnderChapterId() {
        int[] array = {1,3};
        List<Choice> choices = questionService.listChoiceByChapterId(array);
        for(Choice choice : choices){
            System.out.println(choice);
        }
    }
}
