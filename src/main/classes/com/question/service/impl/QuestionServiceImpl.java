package com.question.service.impl;

import com.question.beans.*;
import com.question.dao.IQuestionDao;
import com.question.dao.ISubjectDao;
import com.question.dao.IUserDao;
import com.question.service.IQuestionService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("questionService")
public class QuestionServiceImpl implements IQuestionService {
    @Resource(name = "IQuestionDao")
    private IQuestionDao questionDao;

    @Resource(name = "ISubjectDao")
    private ISubjectDao subjectDao;

    @Resource(name = "IUserDao")
    private IUserDao userDao;

    @Override
    @Transactional
    public void addChoice(Choice choice){
        questionDao.insertChoice(choice);
    }

    @Override
    @Transactional
    public Question showQuestion(int type, int id) {
        Question question = null;
        if(type == 1){
            question = questionDao.selectChoiceById(id);
        } else if (type == 2){
            question = questionDao.selectJudgementById(id);
        } else {
            question = questionDao.selectShorterById(id);
        }
        return question;
    }

    @Override
    @Transactional
    public Choice showChoiceDetail(int id) {
        Choice choice = questionDao.selectChoiceById(id);
        // 获取该选择题的选项列表
        List<ChoiceOption> options = questionDao.listChoiceOptionUnderChoice(id);
        choice.setOptions(options);
        // 获取试题的所属章节
        Chapter chapter = subjectDao.selectChapterById(choice.getChapterId());
        choice.setChapter(chapter);
        // 获取该试题的录入员
        User user = userDao.selectUserById(choice.getUserId());
        choice.setUser(user);
        return choice;
    }

    @Override
    @Transactional
    public Judgement showJudgementDetail(int id) {
        Judgement judgement = questionDao.selectJudgementById(id);
        // 获取试题的章节
        Chapter chapter = subjectDao.selectChapterById(judgement.getChapterId());
        judgement.setChapter(chapter);
        // 获取试题的录入人员
        return judgement;
    }

    @Override
    @Transactional
    public Shorter showShorterDetail(int id) {
        Shorter shorter = questionDao.selectShorterById(id);
        // 获取试题的章节
        Chapter chapter = subjectDao.selectChapterById(shorter.getChapterId());
        shorter.setChapter(chapter);
        // 获取试题的录入人员
        User user = userDao.selectUserById(shorter.getUserId());
        shorter.setUser(user);
        return shorter;
    }

    @Override
    public void addJudgement(Judgement judgement) {
        questionDao.insertJudgement(judgement);
        System.out.println("aaaaaaaaaaaaaaaaaa");
    }

    @Override
    public void addShorter(Shorter shorter) {
        questionDao.insertShorter(shorter);
    }

    @Override
    @Transactional
    public void addOptionForChoice(ChoiceOption choiceOption) {
        questionDao.insertChoiceOption(choiceOption);
    }

    @Override
    @Transactional
    public List<Choice> listChoiceByChapterId(int[] chapterId) {
        List<Choice> choices = questionDao.listChoiceByChapterId(chapterId);
        return choices;
    }

    @Override
    @Transactional
    public List<Integer> listChoiceByChapterIdAndLevel(int level, int[] chapterId) {
        Map<String, Object> map = new HashMap<>();
        map.put("level", level);
        map.put("chapterId", chapterId);
        List<Integer> idList = questionDao.fetchChoiceIdListByChapterAndLevel(map);
        return idList;
    }

    @Override
    @Transactional
    public List<Integer> listJudgementByChapterAndLevel(int level, int[] chapterId) {
        Map<String, Object> map = new HashMap<>();
        map.put("level", level);
        map.put("chapterId", chapterId);
        List<Integer> idList = questionDao.fetchJudgementIdListByChapterAndLevel(map);
        return idList;
    }

    @Override
    @Transactional
    public List<Integer> listShorterByChapterIdAndLevel(int level, int[] chapterId) {
        Map<String, Object> map = new HashMap<>();
        map.put("level", level);
        map.put("chapterId", chapterId);
        List<Integer> idList = questionDao.fetchShorterIdListByChapterAndLevel(map);
        return idList;
    }

    @Override
    public List<Integer> filterChoiceIdListByChapter(int[] chapterId, List<Integer> failChoiceIdList) {
        List<Integer> idList = new ArrayList<>();
        List<Integer> chapterIdList = new ArrayList<>();
        for (int i : chapterId){
            chapterIdList.add(i);
        }
        for(int id : failChoiceIdList){
            Choice choice = questionDao.selectChoiceById(id);
            if(chapterIdList.contains(choice.getChapterId())){
                idList.add(choice.getChapterId());
            }
        }
        return idList;
    }

    @Override
    public List<Integer> filterJudgementIdListByChapter(int[] chapterId, List<Integer> failJudgementIdList) {
        List<Integer> idList = new ArrayList<>();
        List<Integer> chapterIdList = new ArrayList<>();
        for(int i : chapterId){
            chapterIdList.add(i);
        }

        for(int id : failJudgementIdList){
            Judgement judgement = questionDao.selectJudgementById(id);
            if(chapterIdList.contains(judgement.getChapterId())){
                idList.add(judgement.getChapterId());
            }
        }
        return idList;
    }

    @Override
    public List<Integer> filterShorterIdListByChapter(int[] chapterId, List<Integer> failShorterIdList) {
        List<Integer> idList = new ArrayList<>();
        List<Integer> chapterIdList = new ArrayList<>();
        for(int i : chapterId){
            chapterIdList.add(i);
        }

        for(int id : failShorterIdList){
            Shorter shorter = questionDao.selectShorterById(id);
            if (chapterIdList.contains(shorter.getChapterId())){
                idList.add(shorter.getChapterId());
            }
        }
        return idList;
    }

    @Override
    public List<Choice> listChoiceByIdList(List<Integer> baseChoiceIdList) {
        List<Choice> choices = new ArrayList<>();
        for(int id : baseChoiceIdList){
            Choice choice = questionDao.selectChoiceById(id);
            choices.add(choice);
        }
        return choices;
    }

    @Override
    public List<Judgement> listJudgementByIdList(List<Integer> baseJudgementIdList) {
        List<Judgement> judgements = new ArrayList<>();
        for(int id : baseJudgementIdList){
            Judgement judgement = questionDao.selectJudgementById(id);
            judgements.add(judgement);
        }
        return judgements;
    }

    @Override
    public List<Shorter> listShorterByIdList(List<Integer> baseShorterIdList) {
        List<Shorter> shorters = new ArrayList<>();
        for(int id : baseShorterIdList){
            Shorter shorter = questionDao.selectShorterById(id);
            shorters.add(shorter);
        }
        return shorters;
    }

    @Override
    @Transactional
    public ChoiceOption showOptionById(int optionId) {
        ChoiceOption option = questionDao.selectChoiceOptionById(optionId);
        return option;
    }
}
