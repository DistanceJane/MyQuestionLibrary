package com.question.service.impl;

import com.question.beans.User;
import com.question.dao.IUserDao;
import com.question.service.IUserService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

@Service("userService")
public class UserServiceImpl implements IUserService {
    @Resource(name = "IUserDao")
    private IUserDao userDao;

    @Override
    @Transactional
    public void addUser(User user){
        userDao.insertUser(user);
    }

}
