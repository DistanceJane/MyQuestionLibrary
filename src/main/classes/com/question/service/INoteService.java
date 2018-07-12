package com.question.service;

import com.question.beans.Note;
import com.question.beans.User;

import java.util.List;

public interface INoteService {

    /**
     * 获取某用户的所有笔记列表
     * @param user
     * @return
     */
    List<Note> listUserNote(User user);

    /**
     * 获取某个试题下的所有笔记
     * @param note
     * @return
     */
    List<Note> listNoteUnderQuestion(Note note);
}
