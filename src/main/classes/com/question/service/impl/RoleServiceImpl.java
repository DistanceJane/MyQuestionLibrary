package com.question.service.impl;

import com.question.beans.Role;
import com.question.dao.IRoleDao;
import com.question.service.IRoleService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

@Service("roleService")
public class RoleServiceImpl implements IRoleService {
    @Resource(name="IRoleDao")
    private IRoleDao dao;

    public void setDao(IRoleDao dao) {
        this.dao = dao;
    }

    @Override
    @Transactional
    public void addRole(Role role) {
        dao.insertRole(role);
    }
}
