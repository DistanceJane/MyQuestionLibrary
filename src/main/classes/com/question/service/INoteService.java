package com.question.service;

import com.question.beans.Note;
import com.question.beans.User;

import java.util.List;

public interface INoteService {

    List<Note> listUserNote(User user);
}
