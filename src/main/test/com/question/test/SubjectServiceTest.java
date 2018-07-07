package com.question.test;

import com.question.beans.Chapter;
import com.question.beans.Subject;
import com.question.service.ISubjectService;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class SubjectServiceTest {
    private ISubjectService subjectService;

    @Before
    public void setUp() throws Exception {
        ApplicationContext ac = new ClassPathXmlApplicationContext("com/question/resources/spring-*.xml");
        subjectService = (ISubjectService)ac.getBean("subjectService");
    }

    @Test
    public void textListChapterUnderSubject() {
        Subject subject = new Subject();
        subject.setId(1);
        List<Chapter> chapters = subjectService.listChapterUnderSubject(subject);
        for(Chapter chapter : chapters){
            System.out.println(chapter);
        }
    }
}
