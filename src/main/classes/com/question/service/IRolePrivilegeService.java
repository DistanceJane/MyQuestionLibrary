package com.question.service;

import com.question.beans.Privilege;
import com.question.beans.Role;
import com.question.beans.User;

import java.util.List;

public interface IRolePrivilegeService {

    List<User> listUserUnderRole(Role role);
    List<Privilege> ListPrivilegeUnderRole(Role role);
}
