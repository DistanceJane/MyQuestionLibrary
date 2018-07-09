package com.question.service;

import com.question.beans.Paper;
import com.question.beans.User;

import java.util.List;

public interface IPaperService {
    List<Paper> ListUserPaper(User user);

    void addPaper(Paper paper);

    /**
     * 统计用户完成的试卷数
     * @param user
     * @return
     */
    int countPaperFinish(User user);
}
