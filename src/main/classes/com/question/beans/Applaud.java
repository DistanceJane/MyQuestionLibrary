package com.question.beans;

public class Applaud {
    private Integer id;
    // 所对应的笔记
    private Note note;
    // 所对应的笔记id
    private Integer noteId;
    // 点赞的用户
    private User user;
    // 点赞的用户id
    private Integer userId;
    // 点赞是否取消
    private Integer cancel;

    public Applaud() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Note getNote() {
        return note;
    }

    public void setNote(Note note) {
        this.note = note;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Integer getCancel() {
        return cancel;
    }

    public void setCancel(Integer cancel) {
        this.cancel = cancel;
    }

    public Integer getNoteId() {
        return noteId;
    }

    public void setNoteId(Integer noteId) {
        this.noteId = noteId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    @Override
    public String toString() {
        return "Applaud{" +
                "id=" + id +
                ", noteId=" + noteId +
                ", userId=" + userId +
                ", cancel=" + cancel +
                '}';
    }
}
