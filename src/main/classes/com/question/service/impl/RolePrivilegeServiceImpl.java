package com.question.service.impl;

import com.question.beans.Privilege;
import com.question.beans.Role;
import com.question.beans.User;
import com.question.dao.IRolePrivilegeDao;
import com.question.service.IRolePrivilegeService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service("rolePrivilegeService")
public class RolePrivilegeServiceImpl implements IRolePrivilegeService {

    @Resource(name = "IRolePrivilegeDao")
    private IRolePrivilegeDao rolePrivilegeDao;

    @Override
    @Transactional
    public List<User> listUserUnderRole(Role role) {
        List<User> users = rolePrivilegeDao.listUserUnderRole(role);
        return users;
    }

    @Override
    @Transactional
    public List<Privilege> ListPrivilegeUnderRole(Role role) {
        List<Privilege> privileges = rolePrivilegeDao.listPrivilegeUnderRole(role);
        return privileges;
    }
}
