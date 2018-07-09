package com.question.service.impl;

import com.question.beans.Library;
import com.question.beans.Paper;
import com.question.beans.Subject;
import com.question.beans.User;
import com.question.dao.ILibraryDao;
import com.question.dao.IPaperDao;
import com.question.dao.ISubjectDao;
import com.question.service.IPaperService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service("paperService")
public class PaperServiceImpl implements IPaperService {

    @Resource(name = "IPaperDao")
    private IPaperDao paperDao;

    @Resource(name = "ILibraryDao")
    private ILibraryDao libraryDao;

    @Resource(name = "ISubjectDao")
    private ISubjectDao subjectDao;

    /**
     * 获取用户的所有试卷
     * @param user
     * @return
     */
    @Override
    @Transactional
    public List<Paper> ListUserPaper(User user) {
        List<Paper> papers = paperDao.listPaperUnderUser(user);
        // 分别查询试卷所属的学科
        for(Paper paper : papers){
            Library library = libraryDao.selectLibraryById(paper.getLibraryId());
            Subject subject = subjectDao.selectSubjectById(library.getSubjectId());
            library.setSubject(subject);
            paper.setLibrary(library);
        }
        return papers;
    }

    @Override
    @Transactional
    public int countPaperFinish(User user){
        List<Paper> papers = paperDao.listPaperUnderUser(user);
        int count = 0;
        for(Paper paper : papers){
            if(paper.getState() == 1){
                count++;
            }
        }
        return count;
    }

    @Override
    @Transactional
    public void addPaper(Paper paper) {
        paperDao.insertPaper(paper);
    }
}
