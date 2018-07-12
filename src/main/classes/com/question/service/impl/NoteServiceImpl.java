package com.question.service.impl;

import com.question.beans.*;
import com.question.dao.*;
import com.question.service.INoteService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service("noteService")
public class NoteServiceImpl implements INoteService {

    @Resource(name = "INoteDao")
    private INoteDao noteDao;

    @Resource(name = "IQuestionDao")
    private IQuestionDao questionDao;

    @Resource(name = "ISubjectDao")
   private ISubjectDao subjectDao;

    @Resource(name = "IUserDao")
    private IUserDao userDao;
    @Override
    public List<Note> listNoteUnderQuestion(Note note) {
        List<Note> notes = noteDao.listNoteUnderQuestion(note);
        for (Note no : notes) {
            User user = userDao.selectUserById(no.getUserId());
            no.setUser(user);
        }
        return notes;
    }

    /**
     * 获取用户的笔记列表
     * @param user
     * @return
     */
    @Override
    @Transactional
    public List<Note> listUserNote(User user) {
        List<Note> notes = noteDao.listNoteUnderUser(user);
        for (Note note: notes) {
            int chapterId = 0;
            if(note.getTypeId() == 1) {//如果是选择题，代表值为1
                Choice choice = questionDao.selectChoiceById(note.getQuestionId());
                chapterId = choice.getChapterId();
            }else if(note.getTypeId() == 2){//若果是判断题，代表值为2
                Judgement judgement = questionDao.selectJudgementById(note.getQuestionId());
                chapterId = judgement.getChapterId();
            }else{//若果是简答题，代表值为3
                Shorter shorter = questionDao.selectShorterById(note.getQuestionId());
                chapterId = shorter.getChapterId();
            }
            Chapter chapter = subjectDao.selectChapterById(chapterId);
            note.setChapter(chapter);
        }
        return notes;
    }
}
