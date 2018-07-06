package com.question.dao;

import com.question.beans.Privilege;

import java.util.List;

public interface IPrivilegeDao {
    void insertPrivilege(Privilege privilege);
    void deletePrivilege(int id);
    void updatePrivilege(Privilege privilege);
    Privilege selectPrivilegeById(int id);
    List<Privilege> listPrivilege();
}
