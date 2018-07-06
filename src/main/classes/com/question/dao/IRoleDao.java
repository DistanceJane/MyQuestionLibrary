package com.question.dao;

import com.question.beans.Role;

import java.util.List;

public interface IRoleDao {

    void insertRole(Role role);
    void deleteRole(int id);
    void updateRole(Role role);
    Role selectRoleById(int id);
    List<Role> listRole();
}
