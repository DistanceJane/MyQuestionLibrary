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
    public void register(User user){
        userDao.insertUser(user);
    }

    @Override
    @Transactional
    public User login(String username, String password) {
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        return userDao.selectUserByUsernameAndPassword(user);
    }

    @Override
    @Transactional
    public boolean verifyUsername(String username) {
        User user = new User();
        user.setUsername(username);
         if(userDao.selectUserByUsername(user) == null){
             return false;
         }else{
             return true;
         }
    }
}
