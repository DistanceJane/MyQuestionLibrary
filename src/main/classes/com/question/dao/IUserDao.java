package com.question.dao;

import com.question.beans.Role;
import com.question.beans.User;
import java.util.List;

public interface IUserDao {
    /**
     * 新增加一个用户
     * @param user
     */
    void insertUser(User user);

    /**
     * 删除一个用户
     * @param id
     */
    void deleteUser(int id);

    /**
     * 修改用户基本信息
     * @param user
     */
    void updateUserMessage(User user);

    /**
     * 修改用户头像
     * @param user
     */
    void updateUserPhoto(User user);

    /**
     * 修改用户密码
     * @param user
     */
    void updateUserPassword(User user);

    /**
     * 修改用户手机号码
     * @param user
     */
    void updateUserMobile(User user);

    /**
     * 更换用户邮箱账号
     * @param user
     */
    void updateUserEmail(User user);

    /**
     * 修改用户的角色
     * @param user
     */
    void updateUserRole(User user);
    /**
     * 根据Id查询用户信息
     * @param id
     * @return
     */
    User selectUserById(int id);

    /**
     * 根据用户名和密码查找用户信息
     * @param user
     * @return
     */
    User selectUserByUsernameAndPassword(User user);

    /**
     * 根据用户名查找用户信息
     * @param user
     * @return
     */
    User selectUserByUsername(User user);

}
