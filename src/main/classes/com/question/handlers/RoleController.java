package com.question.handlers;

import com.question.beans.Role;
import com.question.service.IRoleService;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RoleController implements Controller {

    private IRoleService roleService;

    public void setRoleService(IRoleService roleService) {
        this.roleService = roleService;
    }

    @Override
    public ModelAndView handleRequest(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws Exception {

        String roleName = httpServletRequest.getParameter("roleName");
        Role role = new Role(roleName);

        System.out.print(role);
        roleService.addRole(role);
        return new ModelAndView("/welcome.jsp");
    }
}
