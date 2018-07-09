package com.question.test;

import com.question.beans.Paper;
import com.question.beans.User;
import com.question.service.IPaperService;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.Date;
import java.util.List;

public class PaperServiceTest {


    private IPaperService paperService;

    @Before
    public void setUp() throws Exception {
        ApplicationContext ac = new ClassPathXmlApplicationContext("com/question/resources/spring-*.xml");
        paperService = (IPaperService) ac.getBean("paperService");
    }

    @Test
    public void testAddPaper() {
        Paper paper = new Paper();
        paper.setLibraryId(1);
        paper.setCreateTime(new Date());
        paper.setScore(90);
        paper.setUserId(1);
        paperService.addPaper(paper);
    }

    @Test
    public void testListPaperUnderUser() {
        User user = new User();
        user.setId(1);
        List<Paper> papers = paperService.ListUserPaper(user);
        for (Paper paper : papers) {
            System.out.println(paper.getCreateTime());
        }
    }
}
