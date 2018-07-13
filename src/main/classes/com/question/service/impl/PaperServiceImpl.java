package com.question.service.impl;

import com.question.beans.*;
import com.question.dao.ILibraryDao;
import com.question.dao.IPaperDao;
import com.question.dao.IQuestionDao;
import com.question.dao.ISubjectDao;
import com.question.service.IPaperService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("paperService")
public class PaperServiceImpl implements IPaperService {

    @Resource(name = "IPaperDao")
    private IPaperDao paperDao;

    @Resource(name = "ILibraryDao")
    private ILibraryDao libraryDao;

    @Resource(name = "ISubjectDao")
    private ISubjectDao subjectDao;

    @Resource(name = "IQuestionDao")
    private IQuestionDao questionDao;
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


    @Override
    @Transactional
    public List<Question> listUserFailure(User user) {
        List<Fail> fails = paperDao.listFailUnderUser(user);
        List<Question> questions = new ArrayList<>();
        // 遍历错题将信息装入question列表
        for(Fail fail : fails){
            Question question = null;
            if(fail.getTypeId() ==  1){ // 选择题
                question = questionDao.selectChoiceById(fail.getQuestionId());
            }else if(fail.getTypeId() == 2){ // 填空题
                question = questionDao.selectJudgementById(fail.getQuestionId());
            }else { // 简答题
                question = questionDao.selectShorterById(fail.getQuestionId());
            }
            question.setTypeId(fail.getTypeId());
            questions.add(question);
        }

        for(Question question : questions){
            // 获取所属章节信息
            Chapter chapter = subjectDao.selectChapterById(question.getId());
            question.setChapter(chapter);
            // 获取所属学科信息
            Subject subject = subjectDao.selectSubjectById(chapter.getId());
            question.setSubject(subject);
        }
        return questions;
    }

    @Override
    public ChoiceQuestion showChoiceQuestion(int id) {
        ChoiceQuestion choiceQuestion = paperDao.selectChoiceQuestionById(id);
        return choiceQuestion;
    }

    @Override
    public JudgementQuestion showJudgementQuestion(int id) {
        JudgementQuestion judgementQuestion = paperDao.selectJudgementQuestionById(id);
        return judgementQuestion;
    }

    @Override
    public ShorterQuestion showShorterQuestion(int id) {
        ShorterQuestion shorterQuestion = paperDao.selectShorterQuestionById(id);
        return shorterQuestion;
    }


    @Override
    public List<Integer> listFailChoiceUnderUser(Integer id) {
        Map<String, Object> map = new HashMap<>();
        map.put("type", 1);
        map.put("userId", id);
        List<Integer> idList = paperDao.fetchQuestionIdListByUser(map);
        return idList;
    }

    @Override
    public List<Integer> listFailJudgementUnderUser(Integer id) {
        Map<String, Object> map = new HashMap<>();
        map.put("type", 2);
        map.put("userId", id);
        List<Integer> idList = paperDao.fetchQuestionIdListByUser(map);
        return idList;
    }

    @Override
    public List<Integer> listFailShorterUnderUser(Integer id) {
        Map<String, Object> map = new HashMap<>();
        map.put("type", 3);
        map.put("userId", id);
        List<Integer> idList = paperDao.fetchQuestionIdListByUser(map);
        return idList;
    }
}
