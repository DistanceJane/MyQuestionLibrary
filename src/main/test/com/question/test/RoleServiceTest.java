package com.question.test;

import com.question.beans.Privilege;
import com.question.beans.Role;
import com.question.beans.User;
import com.question.service.IRolePrivilegeService;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import java.util.List;


public class RoleServiceTest {
    private IRolePrivilegeService rolePrivilegeService;

    @Before
    public void setUp() throws Exception {
        ApplicationContext ac = new ClassPathXmlApplicationContext("com/question/resources/spring-*.xml");
        rolePrivilegeService = (IRolePrivilegeService)ac.getBean("rolePrivilegeService");
    }

    @Test
    public void textListUserUnderRole() {
        Role role = new Role();
        role.setId(1);
        List<User> users = rolePrivilegeService.listUserUnderRole(role);
        for(User user : users){
            System.out.println(user);
        }
    }

    @Test
    public void textListPrivilegeUnderRole() {
        Role role = new Role();
        role.setId(1);
        List<Privilege> privileges = rolePrivilegeService.ListPrivilegeUnderRole(role);
        for(Privilege privilege : privileges){
            System.out.println(privilege);
        }
    }
}
