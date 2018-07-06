package com.question.dao;

import com.question.beans.Privilege;
import com.question.beans.Role;
import com.question.beans.RolePrivilege;

import java.util.List;

public interface IRolePrivilegeDao {
    void insertRolePrivilege(RolePrivilege rolePrivilege);
    void deleteRolePrivilege(int id);
    void updateRolePrivilege(RolePrivilege rolePrivilege);
    RolePrivilege selectRolePrivilegeById(int id);
    List<Privilege> listPrivilegeUnderRole(Role role);
}
