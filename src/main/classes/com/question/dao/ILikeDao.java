package com.question.dao;

import com.question.beans.Like;

public interface ILikeDao {
    void insertLike(Like like);
    void updateLike(int cancel);
    Like selectLikeById(int id);
}
