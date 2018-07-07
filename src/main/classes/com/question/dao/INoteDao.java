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
     * 根据id删除一条笔记
     * @param id
     */
    void deleteNote(int id);

    /**
     * 更新笔记内容
     * @param note
     */
    void updateNoteContent(Note note);

    /**
     * 更新笔记获赞数
     * @param note
     */
    void updateNoteLikes(Note note);

    /**
     * 根据id查询笔记
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
     * @param applaud
     */
    void insertApplaud(Applaud applaud);

    /**
     * 更新点赞记录
     * @param cancel
     */
    void updateApplaud(int cancel);

    /**
     * 查询点赞记录
     * @param id
     * @return
     */
    Applaud selectApplaudById(int id);
}
