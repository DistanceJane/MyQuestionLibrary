package com.question.dao;

import com.question.beans.*;

import java.util.List;

public interface INoteDao {

    /**
     * 新增一条笔记
     * @param note
     */
    void insertNote(Note note);

    /**
     * 更具id删除一条笔记
     * @param id
     */
    void deleteNote(int id);

    /**
     * 更新笔记
     * @param note
     */
    void updateNote(Note note);

    /**
     * 更具id查询笔记
     * @param id
     * @return
     */
    Note selectNoteById(int id);

    /**
     * 获取某一个选择题试题下的所有笔记
     * @param choice
     * @return
     */
    List<Note> listNoteUnderChoice(Choice choice);

    /**
     * 获取某一个判断题下的所有笔记
     * @param judgement
     * @return
     */
    List<Note> listNoteUnderJudgement(Judgement judgement);

    /**
     * 获取某一个简答题下的所有笔记
     * @param shorter
     * @return
     */
    List<Note> listNoteUnderShorter(Shorter shorter);

    /**
     * 列举某个用户所写的笔记
     * @param user
     * @return
     */
    List<Note> listNoteUnderUser(User user);


    /**
     * 新增一条点赞记录
     * @param like
     */
    void insertLike(Like like);

    /**
     * 更新点赞记录
     * @param cancel
     */
    void updateLike(int cancel);

    /**
     * 查询点赞记录
     * @param id
     * @return
     */
    Like selectLikeById(int id);
}
