package com.question.dao;

import com.question.beans.Choice;
import com.question.beans.Option;

import java.util.List;

public interface IOptionDao {
    void insertOption(Option option);
    void deleteOption(int id);
    void updateOption(Option option);
    Option selectOptionById(int id);
    List<Option> listOptionUnderChoice(Choice choice);
}
