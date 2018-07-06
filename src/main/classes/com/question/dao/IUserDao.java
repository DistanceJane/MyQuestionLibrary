package com.question.dao;

import com.question.beans.Role;
import com.question.beans.User;

import java.util.List;

public interface IUserDao {
    void insertUser(User user);
    void deleteUser(int id);
    void updateUser(User user);
    User selectUserById(int id);
    List<User> listUserUnderRole(Role role);
}
