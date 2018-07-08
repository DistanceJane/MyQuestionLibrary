package com.question.service;

import com.question.beans.User;

public interface IUserService {

    /**
     * 用户注册,保存信息到数据库
     * @param user
     */
    void register(User user);

    /**
     * 验证用户名是否存在
     * @param username
     */
    boolean verifyUsername(String username);

    /**
     * 用户登录，成功就返回该用户的信息
     * @param username
     * @param password
     * @return
     */
    User login(String username, String password);


}
