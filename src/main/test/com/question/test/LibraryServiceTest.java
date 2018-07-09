package com.question.test;

import com.question.beans.Library;
import com.question.beans.User;
import com.question.service.ILibraryService;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class LibraryServiceTest {

    private ILibraryService libraryService;

    @Before
    public void setUp() throws Exception {
        ApplicationContext ac = new ClassPathXmlApplicationContext("com/question/resources/spring-*.xml");
        libraryService = (ILibraryService) ac.getBean("libraryService");
    }

    @Test
    public void textListLibraryUnderUser() {
        User user = new User();
        user.setId(1);
        List<Library> libraries = libraryService.listUserLibrary(user);
        for (Library library: libraries) {
            System.out.println(library);
        }
    }
}
