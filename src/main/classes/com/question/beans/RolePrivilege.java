package com.question.beans;

/**
 * 角色与权限之间多对多的关联关系，中间实体。
 */
public class RolePrivilege {
    private Integer id;
    // 角色
    private Role role;
    // 权限
    private Privilege privilege;

    public RolePrivilege() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public Privilege getPrivilege() {
        return privilege;
    }

    public void setPrivilege(Privilege privilege) {
        this.privilege = privilege;
    }

    @Override
    public String toString() {
        return "RolePrivilege{" +
                "id=" + id +
                ", role=" + role +
                ", privilege=" + privilege +
                '}';
    }
}
