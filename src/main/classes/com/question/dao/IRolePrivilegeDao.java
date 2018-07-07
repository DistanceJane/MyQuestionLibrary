package com.question.dao;

import com.question.beans.Privilege;
import com.question.beans.Role;
import com.question.beans.RolePrivilege;
import com.question.beans.User;

import javax.annotation.Resource;
import java.util.List;

@Resource(name = "rolePrivilegeDao")
public interface IRolePrivilegeDao {
    /**
     * 添加一种角色
     * @param role
     */
    void insertRole(Role role);

    /**
     * 删除一种角色
     * @param id
     */
    void deleteRole(int id);

    /**
     * 更新角色名称
     * @param role
     */
    void updateRole(Role role);

    /**
     * 根据id查询角色
     * @param id
     * @return
     */
    Role selectRoleById(int id);

    /**
     * 获取所有角色
     * @return
     */
    List<Role> listRole();


    /**
     * 获取某一角色下的所有用户
     * @param role
     * @return
     */
    List<User> listUserUnderRole(Role role);


    /**
     * 为角色授予一种权限
     * @param rolePrivilege
     */
    void insertRolePrivilege(RolePrivilege rolePrivilege);

    /**
     * 根据id为某个角色删除一种权限
     * @param id
     */
    void deleteRolePrivilege(int id);

    /**
     * 根据id查询某一条角色的权限记录
     * @param id
     * @return
     */
    RolePrivilege selectRolePrivilegeById(int id);

    /**
     * 获取某个角色下的所有权限
     * @param role
     * @return
     */
    List<Privilege> listPrivilegeUnderRole(Role role);
}
