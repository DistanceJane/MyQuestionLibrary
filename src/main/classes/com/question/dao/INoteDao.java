package com.question.dao;

import com.question.beans.*;

import java.util.List;

public interface INoteDao {
    void insertNote(Note note);
    void deleteNote(int id);
    void updateNote(Note note);
    Note selectNoteById(int id);
    List<Note> listNoteUnderChoice(Choice choice);
    List<Note> listNoteUnderJudgement(Judgement judgement);
    List<Note> listNoteUnderShorter(Shorter shorter);
    List<Note> listNoteUnderUser(User user);
}
