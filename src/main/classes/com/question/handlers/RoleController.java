package com.question.handlers;

import com.question.beans.Role;
import com.question.service.IRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/test")
public class RoleController {

    @Resource(name = "roleService")
    private IRoleService roleService;

    @RequestMapping("/register.do")
    public String doRegister(String roleName) {
        Role role = new Role(roleName);
        roleService.addRole(role);
        return "/welcome.jsp";
    }
}
