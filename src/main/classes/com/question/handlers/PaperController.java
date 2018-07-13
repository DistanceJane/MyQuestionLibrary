package com.question.handlers;

import com.question.beans.*;
import com.question.service.ILibraryService;
import com.question.service.IPaperService;
import com.question.service.IQuestionService;
import com.question.service.ISubjectService;
import com.question.util.RandomList;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("paper")
public class PaperController {
    @Resource(name = "paperService")
    private IPaperService paperService;

    @Resource(name = "questionService")
    private IQuestionService questionService;

    @Resource(name = "libraryService")
    private ILibraryService libraryService;

    @Resource(name = "subjectService")
    private ISubjectService subjectService;

    @RequestMapping(value = "create.do",method = RequestMethod.POST)
    public ModelAndView createPaper(int[] chapterId, int level, int origin, int number, HttpSession session){
        ModelAndView mv = new ModelAndView("forward:/WEB-INF/pages/home.jsp");
        User user = (User) session.getAttribute("user");
        List<Integer> choiceIdList = null; // 所有符合条件的选择题Id列表
        List<Integer> judgementIdList = null;// 符合条件的判断题Id列表
        List<Integer> shorterIdList = null; // 符合条件的简答题Id列表

        System.out.println("11111111111111111111111");
        if(origin == 0){// 题目仅来源错题
            // 从个人错题库中获取符合条件的试题id集合
            System.out.println("1111100000000000000000");
            List<Integer> failChoiceIdList = paperService.listFailChoiceUnderUser(user.getId());
            List<Integer> failJudgementIdList = paperService.listFailJudgementUnderUser(user.getId());
            List<Integer> failShorterIdList = paperService.listFailShorterUnderUser(user.getId());
            // 个人错题id集合进行筛选: 获取满足所选章节下试题id列表
            choiceIdList = questionService.filterChoiceIdListByChapter(chapterId, failChoiceIdList);
            judgementIdList = questionService.filterJudgementIdListByChapter(chapterId, failJudgementIdList);
            shorterIdList = questionService.filterShorterIdListByChapter(chapterId, failShorterIdList);
        }else if(origin == 1){// 题目仅来源于新题
            System.out.println("11111111111111111111111");
            // 第一步：先根据难度和章节获取满足条件的试题id集合（新题+旧题）
            choiceIdList = questionService.listChoiceByChapterIdAndLevel(level, chapterId);
            judgementIdList = questionService.listJudgementByChapterAndLevel(level, chapterId);
            shorterIdList = questionService.listShorterByChapterIdAndLevel(level, chapterId);
            // 从个人错题库中获取符合条件的试题id集合
            List<Integer> failChoiceIdList = paperService.listFailChoiceUnderUser(user.getId());
            List<Integer> failJudgementIdList = paperService.listFailJudgementUnderUser(user.getId());
            List<Integer> failShorterIdList = paperService.listFailShorterUnderUser(user.getId());
            // 获取新题的id集，排除个人错题，剩下的新题id全部在base中。
            choiceIdList.removeAll(failChoiceIdList);
            judgementIdList.removeAll(failJudgementIdList);
            shorterIdList.removeAll(failShorterIdList);
        }else{ // 题目来源于新题 + 错题
            System.out.println("1111111112222222222222222");
            // 第一步：先根据难度和章节获取满足条件的试题id集合（新题+旧题）
            choiceIdList = questionService.listChoiceByChapterIdAndLevel(level, chapterId);
            judgementIdList = questionService.listJudgementByChapterAndLevel(level, chapterId);
            shorterIdList = questionService.listShorterByChapterIdAndLevel(level, chapterId);
        }
        // 根据id查询到实体集
        List<Choice> choices = questionService.listChoiceByIdList(choiceIdList);
        List<Judgement> judgements = questionService.listJudgementByIdList(judgementIdList);
        List<Shorter> shorts = questionService.listShorterByIdList(shorterIdList);
        System.out.println("2222222222222222222222222");
        List<Choice> tempChoices = null;
        List<Judgement> tempJudgements = null;
        List<Shorter> tempShorts = null;


        // 第二步：根据id集合相应的进行抽取题目，生成10题、20题、还是30题。
        // 如果生成10题，则 6个选择题，3个填空题，1个简答题
        if(number == 10){
            System.out.println("33333333333333333333333333333");
            tempChoices = RandomList.getChoiceRandomList(choices, 6);
            tempJudgements = RandomList.getJudgementRandomList(judgements, 3);
            tempShorts = RandomList.getShorterRandomList(shorts, 1);
        }else if(number == 20){// 如果生成20题，则 12个选择题，6个填空题，2个简答题
            tempChoices = RandomList.getChoiceRandomList(choices, 12);
            tempJudgements = RandomList.getJudgementRandomList(judgements, 6);
            tempShorts = RandomList.getShorterRandomList(shorts, 2);
        }else{// 如果生成30题，则 15个选择题，12个填空题，3个简答题
            tempChoices = RandomList.getChoiceRandomList(choices, 15);
            tempJudgements = RandomList.getJudgementRandomList(judgements, 12);
            tempShorts = RandomList.getShorterRandomList(shorts, 3);
        }

        Choice choice1 = tempChoices.get(0);
        Chapter chapter = subjectService.showChapterByChoice(choice1.getChapterId());
        Subject subject = subjectService.showSubjectByChapter(chapter.getSubjectId());

        Library library = libraryService.selectLibraryByUserAndSubject(user.getId(), subject.getId());
        System.out.println("4444444444444444444444444444444");
        // 第三步：创建一张试卷
        Paper paper = new Paper();
        paper.setLibraryId(library.getId());
        paper.setUserId(user.getId());
        paper.setCreateTime(new Date());
        paperService.addPaper(paper);
        // 选择题的试题记录放到这张试卷上
        List<ChoiceQuestion> choiceQuestions = new ArrayList<>();
        for (Choice choice : tempChoices){
            ChoiceQuestion choiceQuestion = new ChoiceQuestion();
            choiceQuestion.setChoiceId(choice.getId());
            choiceQuestion.setPaperId(paper.getId());
            choiceQuestions.add(choiceQuestion);
        }
        // 判断题的试题记录放到这张试卷上
        List<JudgementQuestion> judgementQuestions = new ArrayList<>();
        for (Judgement judgement : tempJudgements){
            JudgementQuestion judgementQuestion = new JudgementQuestion();
            judgementQuestion.setJudgementId(judgement.getId());
            judgementQuestion.setPaperId(paper.getId());
            judgementQuestions.add(judgementQuestion);
        }
        // 简答题的试题记录放在这张试卷上
        List<ShorterQuestion> shorterQuestions = new ArrayList<>();
        for(Shorter shorter : tempShorts){
            ShorterQuestion shorterQuestion = new ShorterQuestion();
            shorterQuestion.setShortId(shorter.getId());
            shorterQuestion.setPaperId(paper.getId());
            shorterQuestions.add(shorterQuestion);
        }
        System.out.println("555555555555555555555");
        // 如果生成10题，则 6个选择题，3个填空题，1个简答题，每题分值为 10、8、16
        if(number == 10){
            // 为选择题设置分数
            for(ChoiceQuestion choiceQuestion : choiceQuestions) {
                choiceQuestion.setScore(10);
            }
            // 为判断题设置分数
            for (JudgementQuestion judgementQuestion : judgementQuestions){
                judgementQuestion.setScore(6);
            }
            // 为判断题设置分数
            for(ShorterQuestion shorterQuestion : shorterQuestions){
                shorterQuestion.setScore(16);
            }
            // 如果生成20题，则 12个选择题，6个填空题，2个简答题，每体分值为 5、4、8
        }else if(number == 20){
            // 为选择题设置分数
            for(ChoiceQuestion choiceQuestion : choiceQuestions) {
                choiceQuestion.setScore(5);
            }
            // 为判断题设置分数
            for (JudgementQuestion judgementQuestion : judgementQuestions){
                judgementQuestion.setScore(4);
            }
            // 为判断题设置分数
            for(ShorterQuestion shorterQuestion : shorterQuestions){
                shorterQuestion.setScore(8);
            }
            // 如果生成30题，则 15个选择题，12个填空题，3个简答题，每题分值 4， 2， 5（最后一个简答题6分）
        }else{
            for(ChoiceQuestion choiceQuestion : choiceQuestions) {
                choiceQuestion.setScore(4);
            }
            // 为判断题设置分数
            for (JudgementQuestion judgementQuestion : judgementQuestions){
                judgementQuestion.setScore(2);
            }
            // 为判断题设置分数
            for(ShorterQuestion shorterQuestion : shorterQuestions){
                shorterQuestion.setScore(5);
            }
            // 最后一个题设置为6分，凑齐总分为100分
            shorterQuestions.get(shorterQuestions.size()).setScore(6);
        }
        System.out.println("66666666666666666666666666666");
        for(ChoiceQuestion choiceQuestion : choiceQuestions){
            System.out.println(choiceQuestion);
        }
        for(JudgementQuestion judgementQuestion : judgementQuestions){
            System.out.println(judgementQuestion);
        }
        for (ShorterQuestion shorterQuestion : shorterQuestions){
            System.out.println(shorterQuestion);
        }
        return mv;
    }
}
