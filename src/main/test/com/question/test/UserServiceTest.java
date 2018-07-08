package com.question.test;

import com.question.beans.Role;
import com.question.beans.User;
import com.question.service.IUserService;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class UserServiceTest {

    private IUserService userService;

    @Before
    public void setUp() throws Exception {
        ApplicationContext ac = new ClassPathXmlApplicationContext("com/question/resources/spring-*.xml");
        userService = (IUserService) ac.getBean("userService");
    }

    @Test
    public void testAddUser() {
        User user = new User();
        Role role = new Role();
        role.setId(1);
        user.setRole(role);
        user.setUsername("aaaaa");
        user.setPassword("111");
        user.setEmail("111@qq.com");
        userService.register(user);
    }
}
