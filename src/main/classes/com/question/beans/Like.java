package com.question.beans;

public class Like {
    private Integer id;
    // 所对应的笔记
    private Note note;
    // 点赞的用户
    private User user;
    // 点赞是否取消
    private Integer cancel;

    public Like() {
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

    @Override
    public String toString() {
        return "Like{" +
                "id=" + id +
                ", note=" + note +
                ", user=" + user +
                ", cancel=" + cancel +
                '}';
    }
}
