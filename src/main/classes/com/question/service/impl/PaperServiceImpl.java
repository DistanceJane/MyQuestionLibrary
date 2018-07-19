package com.question.service.impl;

import com.question.beans.*;
import com.question.dao.ILibraryDao;
import com.question.dao.IPaperDao;
import com.question.dao.IQuestionDao;
import com.question.dao.ISubjectDao;
import com.question.service.IPaperService;
import com.question.util.CheckQuestion;
import com.question.util.RandomList;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.*;

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
                // 找到当时的试卷上的题目的答案
                ChoiceQuestion cq = paperDao.selectChoiceQuestionById(fail.getQuestionId());
                System.out.println(cq);
                question = questionDao.selectChoiceById(cq.getChoiceId());
                System.out.println(question);
            }else if(fail.getTypeId() == 2){ // 填空题
                JudgementQuestion jq = paperDao.selectJudgementQuestionById(fail.getQuestionId());
                System.out.println(jq);
                question = questionDao.selectJudgementById(jq.getJudgementId());
                System.out.println(question);
            }else { // 简答题
                ShorterQuestion sq = paperDao.selectShorterQuestionById(fail.getQuestionId());
                System.out.println(sq);
                question = questionDao.selectShorterById(sq.getShorterId());
                System.out.println(question);
            }
            question.setTypeId(fail.getTypeId());
            question.setQuestionId(fail.getQuestionId());
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
        List<Integer> list = new ArrayList<>();
        Map<String, Object> map = new HashMap<>();
        map.put("type", 1);
        map.put("userId", id);
        List<Integer> idList = paperDao.fetchQuestionIdListByUser(map);
        for(int i : idList){
            ChoiceQuestion choiceQuestion = paperDao.selectChoiceQuestionById(i);
            list.add(choiceQuestion.getChoiceId());
        }
        return list;
    }

    @Override
    public List<Integer> listFailJudgementUnderUser(Integer id) {
        List<Integer> list = new ArrayList<>();
        Map<String, Object> map = new HashMap<>();
        map.put("type", 2);
        map.put("userId", id);
        List<Integer> idList = paperDao.fetchQuestionIdListByUser(map);
        for(int i : idList){
            JudgementQuestion judgementQuestion = paperDao.selectJudgementQuestionById(i);
            list.add(judgementQuestion.getJudgementId());
        }
        return list;
    }

    @Override
    public List<Integer> listFailShorterUnderUser(Integer id) {
        List<Integer> list = new ArrayList<>();
        Map<String, Object> map = new HashMap<>();
        map.put("type", 3);
        map.put("userId", id);
        List<Integer> idList = paperDao.fetchQuestionIdListByUser(map);
        for(int i : idList){
            ShorterQuestion shorterQuestion = paperDao.selectShorterQuestionById(i);
            list.add(shorterQuestion.getShorterId());
        }
        return list;
    }

    @Override
    public List<Choice> assembleChoiceUnderPaper(List<Choice> choices, int number) {
        List<Choice> choiceList = null;
        if(number == 10){// 如果生成10题，则 6个选择题
            choiceList = RandomList.getRandomList(choices, 6);
        }else if(number == 20){// 如果生成20题，则 12个选择题
            choiceList = RandomList.getRandomList(choices, 12);
        }else{// 如果生成30题，则 15个选择题
            choiceList = RandomList.getRandomList(choices, 15);
        }
        return choiceList;
    }

    @Override
    public List<Judgement> assembleJudgementUnderPaper(List<Judgement> judgements, int number) {
        List<Judgement> judgementList = null;
        if(number == 10){// 如果生成20题，3个填空题
            judgementList = RandomList.getRandomList(judgements, 3);
        }else if(number == 20){// 如果生成20题，6个填空题
            judgementList = RandomList.getRandomList(judgements, 6);
        }else{// 如果生成30题，12个填空题
            judgementList = RandomList.getRandomList(judgements, 12);
        }
        return judgementList;
    }

    @Override
    public List<Shorter> assembleShorterUnderPaper(List<Shorter> shorts, int number) {
        List<Shorter> shorterList = null;
        if(number == 10){// 如果生成20题，1个简答题
            shorterList = RandomList.getRandomList(shorts, 1);
        }else if(number == 20){// 如果生成20题，2个简答题
            shorterList = RandomList.getRandomList(shorts, 2);
        }else{// 如果生成30题，则 15个选择题，3个简答题
            shorterList = RandomList.getRandomList(shorts, 3);
        }
        return shorterList;
    }

    @Override
    public void enteringChoiceQuestionIntoPaper(List<Choice> tempChoices, int number, int paperId) {
        List<ChoiceQuestion> choiceQuestions = new ArrayList<>();
        for (Choice choice : tempChoices){
            ChoiceQuestion choiceQuestion = new ChoiceQuestion();
            choiceQuestion.setChoiceId(choice.getId());
            choiceQuestion.setPaperId(paperId);
            if(number == 10){
                choiceQuestion.setScore(10);
            }else if(number == 20){
                choiceQuestion.setScore(5);
            }else{
                choiceQuestion.setScore(4);
            }
            choiceQuestions.add(choiceQuestion);
        }
        // 试题入库
        for(ChoiceQuestion cq : choiceQuestions){
            paperDao.insertChoiceQuestion(cq);
        }
    }

    @Override
    public void enteringJudgementQuestionIntoPaper(List<Judgement> tempJudgements, int number, int paperId) {
        List<JudgementQuestion> judgementQuestions = new ArrayList<>();
        for (Judgement judgement : tempJudgements){
            JudgementQuestion judgementQuestion = new JudgementQuestion();
            judgementQuestion.setJudgementId(judgement.getId());
            judgementQuestion.setPaperId(paperId);
            if(number == 10){
                judgementQuestion.setScore(6);
            }else if(number == 20){
                judgementQuestion.setScore(4);
            }else{
                judgementQuestion.setScore(2);
            }
            judgementQuestions.add(judgementQuestion);
        }
        for(JudgementQuestion jq : judgementQuestions){
            paperDao.insertJudgementQuestion(jq);
        }

    }

    @Override
    public void enteringShorterQuestionIntoPaper(List<Shorter> tempShorts, int number, int paperId) {
        List<ShorterQuestion> shorterQuestions = new ArrayList<>();
        for(Shorter shorter : tempShorts){
            ShorterQuestion shorterQuestion = new ShorterQuestion();
            shorterQuestion.setShorterId(shorter.getId());
            shorterQuestion.setPaperId(paperId);
            if(number == 10){
                shorterQuestion.setScore(16);
            }else if(number == 20){
                shorterQuestion.setScore(8);
            }else{
                shorterQuestion.setScore(5);
                shorterQuestions.get(tempShorts.size()-1).setScore(6);
            }
            shorterQuestions.add(shorterQuestion);
        }
        // 试题入库
        for(ShorterQuestion sq : shorterQuestions){
            paperDao.insertShorterQuestion(sq);
        }
    }

    @Override
    public List<ChoiceQuestion> listChoiceQuestionUnderPaper(int paperId) {
        List<ChoiceQuestion> choiceQuestions = paperDao.listChoiceQuestionUnderPaper(paperId);
        return choiceQuestions;
    }

    @Override
    public List<JudgementQuestion> listJudgementQuestionUnderPaper(int paperId) {
        List<JudgementQuestion> judgementQuestions = paperDao.listJudgementQuestionUnderPaper(paperId);
        return judgementQuestions;
    }

    @Override
    public List<ShorterQuestion> listShorterQuestionUnderPaper(int paperId) {
        List<ShorterQuestion> shorterQuestions = paperDao.listShorterQuestionUnderPaper(paperId);
        return shorterQuestions;
    }

    @Override
    public Map<Integer, Integer> mapChoiceQuestionId(List<ChoiceQuestion> choiceQuestions) {
        Map<Integer, Integer> map = new LinkedHashMap<>();
        for(ChoiceQuestion cq : choiceQuestions){
            map.put(cq.getId(), cq.getChoiceId());
        }
        return map;
    }

    @Override
    public Map<Integer, Integer> mapJudgementQuestionId(List<JudgementQuestion> judgementQuestions) {
        Map<Integer, Integer> map = new LinkedHashMap<>();
        for(JudgementQuestion jq : judgementQuestions){
            map.put(jq.getId(), jq.getJudgementId());
        }
        return map;
    }

    @Override
    public Map<Integer, Integer> mapShorterQuestionId(List<ShorterQuestion> shorterQuestions) {
        Map<Integer, Integer> map = new LinkedHashMap<>();
        for(ShorterQuestion sq : shorterQuestions){
            map.put(sq.getId(), sq.getShorterId());
        }
        return map;
    }

    @Override
    public List<CheckQuestion> checkChoiceQuestionUnderPaper(List<ChoiceQuestion> choiceQuestions) {
        List<CheckQuestion> list = new LinkedList<>();
        for(ChoiceQuestion cq: choiceQuestions){
            CheckQuestion checkQuestion = new CheckQuestion();
            checkQuestion.setId(cq.getId());
            checkQuestion.setQuestionId(cq.getChoiceId());
            String answer = "";
            List<ChoiceOption> choiceOptions = questionDao.listChoiceOptionUnderChoice(cq.getChoiceId());
            for(ChoiceOption option : choiceOptions){
                if(option.getCorrect() == 1){
                    answer += option.getHeader() + "、";
                }
            }
            ChoiceQuestion temp = paperDao.selectChoiceQuestionById(cq.getId());
            String myAnswer = temp.getMyAnswer() + "、";
            if(myAnswer.equals(answer)){
                checkQuestion.setCorrect(1);
            }else{
                checkQuestion.setCorrect(0);
            }
            checkQuestion.setScore(cq.getScore());
            checkQuestion.setType(1);
            System.out.println("正确答案 ：" + answer);
            System.out.println("我的答案 ：" + myAnswer);
            System.out.println(checkQuestion);
            ((LinkedList<CheckQuestion>) list).addLast(checkQuestion);
        }
        return list;
    }

    @Override
    public List<CheckQuestion> checkJudgementQuestionUnderPaper(List<JudgementQuestion> judgementQuestions) {
        List<CheckQuestion> list = new LinkedList<>();
        for(JudgementQuestion jq : judgementQuestions){
            CheckQuestion checkQuestion = new CheckQuestion();
            JudgementQuestion judgementQuestion = paperDao.selectJudgementQuestionById(jq.getId());
            Judgement judgement = questionDao.selectJudgementById(jq.getJudgementId());
            if(judgementQuestion.getMyAnswer() == judgement.getAnswer()){
                checkQuestion.setCorrect(1);
            }else{
                checkQuestion.setCorrect(0);
            }
            checkQuestion.setId(jq.getId());
            checkQuestion.setQuestionId(judgement.getId());
            checkQuestion.setScore(jq.getScore());
            checkQuestion.setType(2);
            System.out.println("正确答案 ：" + judgement.getAnswer());
            System.out.println("我的答案 ：" + judgementQuestion.getMyAnswer());
            System.out.println(checkQuestion);
            ((LinkedList<CheckQuestion>) list).addLast(checkQuestion);
        }
        return list;
    }

    @Override
    @Transactional
    public List<CheckQuestion> checkShorterQuestionPaper(List<ShorterQuestion> shorterQuestions) {
        List<CheckQuestion> list = new LinkedList<>();
        CheckQuestion checkQuestion = new CheckQuestion();
        for(ShorterQuestion sq : shorterQuestions){
            ShorterQuestion shorterQuestion = paperDao.selectShorterQuestionById(sq.getId());
            Shorter shorter = questionDao.selectShorterById(sq.getShorterId());
            if(shorterQuestion.getMyAnswer().equals(shorter.getAnswer())){
                checkQuestion.setCorrect(1);
            }else{
                checkQuestion.setCorrect(0);
            }
            checkQuestion.setId(sq.getId());
            checkQuestion.setQuestionId(sq.getShorterId());
            checkQuestion.setScore(sq.getScore());
            checkQuestion.setType(3);
            System.out.println("正确答案 ：" + shorter.getAnswer());
            System.out.println("我的答案 ：" + shorterQuestion.getMyAnswer());
            System.out.println(checkQuestion);
            ((LinkedList<CheckQuestion>) list).addLast(checkQuestion);
        }
        return list;
    }

    @Override
    @Transactional
    public void commitChoiceAnswer(ChoiceQuestion choiceQuestion) {
        paperDao.updateChoiceQuestionAnswer(choiceQuestion);
    }

    @Override
    @Transactional
    public void commitJudgementAnswer(JudgementQuestion judgementQuestion) {
        paperDao.updateJudgementQuestionAnswer(judgementQuestion);
    }

    @Override
    @Transactional
    public void commitShorterAnswer(ShorterQuestion shorterQuestion) {
        paperDao.updateShorterQuestionAnswer(shorterQuestion);
    }

    @Override
    @Transactional
    public void commitPaper(Paper paper) {
        paperDao.updatePaper(paper);
    }

    @Override
    @Transactional
    public Paper showPaperDetail(int paperId) {
        Paper paper = paperDao.selectPaperById(paperId);
        return paper;
    }

    @Override
    public int countPaperScore(List<CheckQuestion> checkQuestionList) {
        int score = 0;
        for(CheckQuestion cq : checkQuestionList){
            if(cq.getCorrect() == 1){
                score += cq.getScore();
            }
        }
        return score;
    }

    @Override
    public int countPaperCorrectQuestion(List<CheckQuestion> checkQuestionList) {
        int correct = 0;
        for(CheckQuestion cq : checkQuestionList){
            if(cq.getCorrect() == 1){
                correct ++;
            }
        }
        return correct;
    }

    @Override
    public List<CheckQuestion> mergeCheckQuestionList(List<CheckQuestion> checkChoiceQuestionList, List<CheckQuestion> checkJudgementQuestionList, List<CheckQuestion> checkShorterQuestionList) {
        List<CheckQuestion> list = new LinkedList<>();
        for(CheckQuestion cq : checkChoiceQuestionList){
            ((LinkedList<CheckQuestion>) list).addLast(cq);
        }
        for(CheckQuestion cq : checkJudgementQuestionList){
            ((LinkedList<CheckQuestion>) list).addLast(cq);
        }
        for(CheckQuestion cq : checkShorterQuestionList){
            ((LinkedList<CheckQuestion>) list).addLast(cq);
        }
        return list;
    }

    @Override
    @Transactional
    public List<ChoiceQuestion> showChoiceQuestionUnderPaper(int id) {
        List<ChoiceQuestion> choiceQuestions = paperDao.listChoiceQuestionUnderPaper(id);
        return choiceQuestions;
    }

    @Override
    @Transactional
    public List<JudgementQuestion> showJudgementQuestionUnderPaper(int id) {
        List<JudgementQuestion> judgementQuestions = paperDao.listJudgementQuestionUnderPaper(id);
        return judgementQuestions;
    }

    @Override
    @Transactional
    public List<ShorterQuestion> showShorterQuestionUnderPaper(int id) {
        List<ShorterQuestion> shorterQuestions = paperDao.listShorterQuestionUnderPaper(id);
        return shorterQuestions;
    }

    @Override
    @Transactional
    public void addFail(Fail fail) {
        paperDao.insertFail(fail);
    }

    @Override
    public Paper selectPaperById(int paperId) {
        Paper paper = paperDao.selectPaperById(paperId);
        return paper;
    }
}
