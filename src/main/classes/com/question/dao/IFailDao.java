package com.question.dao;

import com.question.beans.Fail;
import com.question.beans.User;

import java.util.List;

public interface IFailDao {
    void insertFail(Fail fail);
    void deleteFail(int id);
    Fail selectFailBuId(int id);
    List<Fail> listFailUnderUser(User user);
}
