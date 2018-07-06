package com.question.dao;

import com.question.beans.Library;
import com.question.beans.User;

import java.util.List;

public interface ILibraryDao {
    void insertLibrary(Library library);
    void deleteLibrary(int id);
    void updateLibrary(Library library);
    Library selectLibraryById(int id);
    List<Library> listLibraryByName(String name);
    List<Library> listLibraryUnderUser(User user);
}
