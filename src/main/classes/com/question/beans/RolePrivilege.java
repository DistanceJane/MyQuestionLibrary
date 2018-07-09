package com.question.beans;

/**
 * 角色与权限之间多对多的关联关系，中间实体。
 */
public class RolePrivilege {
    private Integer id;
    // 角色id
    private Integer roleId;
    // 权限id
    private Integer privilegeId;

    public RolePrivilege() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    public Integer getPrivilegeId() {
        return privilegeId;
    }

    public void setPrivilegeId(Integer privilegeId) {
        this.privilegeId = privilegeId;
    }

    @Override
    public String toString() {
        return "RolePrivilege{" +
                "id=" + id +
                ", roleId=" + roleId +
                ", privilegeId=" + privilegeId +
                '}';
    }
}
