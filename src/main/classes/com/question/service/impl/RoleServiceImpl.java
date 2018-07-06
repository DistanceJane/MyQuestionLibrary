package com.question.service.impl;

import com.question.beans.Role;
import com.question.dao.IRoleDao;
import com.question.service.IRoleService;

public class RoleServiceImpl implements IRoleService {
    private IRoleDao dao;

    public void setDao(IRoleDao dao) {
        this.dao = dao;
    }

    @Override
    public void addRole(Role role) {
        dao.insertRole(role);
    }
}
