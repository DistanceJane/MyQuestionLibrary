package com.question.handlers;

import com.question.beans.*;
import com.question.service.*;
import com.question.util.CheckQuestion;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
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

    @Resource(name = "noteService")
    private INoteService noteService;

    @RequestMapping(value = "create.do",method = RequestMethod.POST)
    public String createPaper(int[] chapterId, int level, int origin, int number, HttpSession session, Model model){

        User user = (User) session.getAttribute("user");
        List<Integer> choiceIdList = null; // 所有符合条件的选择题Id列表
        List<Integer> judgementIdList = null;// 符合条件的判断题Id列表
        List<Integer> shorterIdList = null; // 符合条件的简答题Id列表
        if(origin == 0){// 题目仅来源错题
            // 从个人错题库中获取符合条件的试题id集合,获得questionId
            List<Integer> failChoiceIdList = paperService.listFailChoiceUnderUser(user.getId());
            List<Integer> failJudgementIdList = paperService.listFailJudgementUnderUser(user.getId());
            List<Integer> failShorterIdList = paperService.listFailShorterUnderUser(user.getId());
            // 个人错题id集合进行筛选: 获取满足所选章节下试题id列表
            choiceIdList = questionService.filterChoiceIdListByChapter(chapterId, failChoiceIdList);
            judgementIdList = questionService.filterJudgementIdListByChapter(chapterId, failJudgementIdList);
            shorterIdList = questionService.filterShorterIdListByChapter(chapterId, failShorterIdList);
        }else if(origin == 1){// 题目仅来源于新题
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
            // 第一步：先根据难度和章节获取满足条件的试题id集合（新题+旧题）
            choiceIdList = questionService.listChoiceByChapterIdAndLevel(level, chapterId);
            judgementIdList = questionService.listJudgementByChapterAndLevel(level, chapterId);
            shorterIdList = questionService.listShorterByChapterIdAndLevel(level, chapterId);
        }
        // 根据id查询到实体集
        List<Choice> choices = questionService.listChoiceByIdList(choiceIdList);
        List<Judgement> judgements = questionService.listJudgementByIdList(judgementIdList);
        List<Shorter> shorts = questionService.listShorterByIdList(shorterIdList);
        // 第二步：根据id集合相应的进行抽取题目进行组合，生成10题、20题、还是30题的情况。
        List<Choice> tempChoices = paperService.assembleChoiceUnderPaper(choices, number);
        List<Judgement> tempJudgements = paperService.assembleJudgementUnderPaper(judgements, number);
        List<Shorter> tempShorts = paperService.assembleShorterUnderPaper(shorts, number);
        // 获取library
        int chapterId1 = 1;
        if(tempChoices.size() > 0) {
            Choice choice1 = tempChoices.get(0);
            chapterId1 = choice1.getChapterId();
        }
        if(tempJudgements.size() > 0){
            Judgement judgement = tempJudgements.get(0);
            chapterId1 = judgement.getChapterId();
        }if(tempShorts.size() >0){
            Shorter shorter = tempShorts.get(0);
            chapterId1 = shorter.getChapterId();
        }
        Chapter chapter = subjectService.showChapterByChoice(chapterId1);
        Subject subject = subjectService.showSubjectByChapter(chapter.getSubjectId());
        Library library = libraryService.selectLibraryByUserAndSubject(user.getId(), subject.getId());
        // 第三步：创建一张试卷
        Paper paper = new Paper();
        paper.setLibraryId(library.getId());
        paper.setUserId(user.getId());
        paper.setCreateTime(new Date());
        paperService.addPaper(paper);
        // 将抽取的试题信息录入为生成试卷上的试题
        paperService.enteringChoiceQuestionIntoPaper(tempChoices, number, paper.getId());
        paperService.enteringJudgementQuestionIntoPaper(tempJudgements, number, paper.getId());
        paperService.enteringShorterQuestionIntoPaper(tempShorts, number, paper.getId());
        model.addAttribute("subjectId", subject.getId());
        model.addAttribute("paperId", paper.getId());
        return "redirect:init.do";
    }

    @RequestMapping("/init.do")
    public ModelAndView initPaper(int subjectId, int paperId, HttpSession session, Model model){
        ModelAndView mv = new ModelAndView("redirect:test.do");
        // 获取该试卷下的所有试题
        List<ChoiceQuestion> choiceQuestions = paperService.listChoiceQuestionUnderPaper(paperId);
        List<JudgementQuestion> judgementQuestions = paperService.listJudgementQuestionUnderPaper(paperId);
        List<ShorterQuestion> shorterQuestions = paperService.listShorterQuestionUnderPaper(paperId);

        Subject subject = subjectService.showSubjectDetail(subjectId);


        // 将试卷信息存入session
        session.setAttribute("subject", subject.getSubjectName());
        session.setAttribute("paperId", paperId);
        session.setAttribute("choiceQuestions",choiceQuestions);
        session.setAttribute("judgementQuestions", judgementQuestions);
        session.setAttribute("shorterQuestions", shorterQuestions);
        model.addAttribute("questionNo", 1);
        return mv;
    }

    @RequestMapping("/test.do")
    public ModelAndView loadQuestion(int questionNo, HttpSession session){
        System.out.println("questionNo = " + questionNo);
        ModelAndView mv = new ModelAndView("/WEB-INF/pages/examine.jsp");
        List<ChoiceQuestion> choiceQuestions = (List<ChoiceQuestion>) session.getAttribute("choiceQuestions");
        List<JudgementQuestion> judgementQuestions = (List<JudgementQuestion>) session.getAttribute("judgementQuestions");
        List<ShorterQuestion> shorterQuestions = (List<ShorterQuestion>) session.getAttribute("shorterQuestions");
        int choiceNum = choiceQuestions.size();
        int judgementNum = judgementQuestions.size() + choiceNum;
        int shorterNum = shorterQuestions.size() + judgementNum;
        mv.addObject("count", shorterNum);
        // 如果question大于number，则试题已做完。
        if(questionNo <= choiceNum){ // 选择题
            ChoiceQuestion choiceQuestion = choiceQuestions.get(questionNo -1);
            // 加载对应的选择题
            Choice choice = questionService.showChoiceDetail(choiceQuestion.getChoiceId());
            choice.setId(choiceQuestion.getId());// 将试卷试题id存为questionId
            mv.addObject("choice", choice);
            mv.addObject("type", 1);
        }else if((questionNo > choiceNum) && (questionNo <=  judgementNum)){ // 判断题
            JudgementQuestion judgementQuestion = judgementQuestions.get(questionNo - choiceNum-1);
            Judgement judgement = questionService.showJudgementDetail(judgementQuestion.getJudgementId());
            judgement.setId(judgementQuestion.getId());// 将试卷试题id存为questionId
            mv.addObject("judgement", judgement);
            mv.addObject("type", 2);
        }else if((questionNo > judgementNum) && (questionNo <= shorterNum)){ // 简答题
            ShorterQuestion shorterQuestion = shorterQuestions.get(questionNo - judgementNum - 1);
            Shorter shorter = questionService.showShorterDetail(shorterQuestion.getShorterId());
            shorter.setId(shorterQuestion.getId());
            mv.addObject("shorter", shorter);
            mv.addObject("type", 3);
        }else{
            mv.setViewName("redirect:check.do");
        }
        mv.addObject("questionNo", questionNo);
        return mv;
    }

    @RequestMapping("/commitChoice.do")
    public ModelAndView saveChoiceQuestion(int questionNo, int questionId, int[] optionId, Model model){
        ModelAndView mv = new ModelAndView("redirect:test.do");
        ChoiceQuestion choiceQuestion = paperService.showChoiceQuestion(questionId);
        String myAnswer = "";
        for(int i = 1 ;i <= optionId.length; i++){
            ChoiceOption option = questionService.showOptionById(i);
            myAnswer += option.getHeader();
            if(i != optionId.length){
                myAnswer += "、";
            }
        }
        choiceQuestion.setMyAnswer(myAnswer);
        paperService.commitChoiceAnswer(choiceQuestion);
        model.addAttribute("questionNo", questionNo + 1);
        return mv;
    }


    @RequestMapping("/commitJudgement.do")
    public ModelAndView saveJudgementQuestion(int questionNo, int questionId, int myAnswer, Model model){
        ModelAndView mv = new ModelAndView("redirect:test.do");
        JudgementQuestion judgementQuestion = paperService.showJudgementQuestion(questionId);
        judgementQuestion.setMyAnswer(myAnswer);
        paperService.commitJudgementAnswer(judgementQuestion);
        model.addAttribute("questionNo", questionNo + 1);
        return mv;
    }

    @RequestMapping("/commitShorter.do")
    public ModelAndView saveShorterQuestion(int questionNo, int questionId, String myAnswer, Model model){
        ModelAndView mv = new ModelAndView("redirect:test.do");
        ShorterQuestion shorterQuestion = paperService.showShorterQuestion(questionId);
        shorterQuestion.setMyAnswer(myAnswer);
        paperService.commitShorterAnswer(shorterQuestion);
        model.addAttribute("questionNo", questionNo + 1);
        return mv;
    }

    @RequestMapping("/check.do")
    public ModelAndView checkPaper(HttpSession session){
        ModelAndView mv = new ModelAndView("/WEB-INF/pages/checkAnswer.jsp");
        User user = (User) session.getAttribute("user");
        // 从session中获取刚才做的题目
        List<ChoiceQuestion> choiceQuestions = (List<ChoiceQuestion>) session.getAttribute("choiceQuestions");
        List<JudgementQuestion> judgementQuestions = (List<JudgementQuestion>) session.getAttribute("judgementQuestions");
        List<ShorterQuestion> shorterQuestions = (List<ShorterQuestion>) session.getAttribute("shorterQuestions");
        String subjectName = (String) session.getAttribute("subject");
        mv.addObject("subjectName", subjectName);
        int paperId = (int) session.getAttribute("paperId");
        int choiceNum = choiceQuestions.size();
        int judgementNum = judgementQuestions.size() + choiceNum;
        int shorterNum = shorterQuestions.size() + judgementNum;
        mv.addObject("number", shorterNum);
        List<CheckQuestion> checkChoiceQuestionList = paperService.checkChoiceQuestionUnderPaper(choiceQuestions);
        List<CheckQuestion> checkJudgementQuestionList = paperService.checkJudgementQuestionUnderPaper(judgementQuestions);
        List<CheckQuestion> checkShorterQuestionList = paperService.checkShorterQuestionPaper(shorterQuestions);
        List<CheckQuestion> checkQuestionList = paperService.mergeCheckQuestionList(checkChoiceQuestionList,checkJudgementQuestionList, checkShorterQuestionList);
        for(int i = 0; i < checkQuestionList.size(); i++){
            checkQuestionList.get(i).setQuestionNo(i+1);
        }
        Paper paper1 = paperService.selectPaperById(paperId);
        // 将错题添加到错题集中
        for(CheckQuestion cq : checkQuestionList){
            if(cq.getCorrect() == 0){//错题
                Fail fail = new Fail();
                fail.setTypeId(cq.getType());
                fail.setQuestionId(cq.getId());
                fail.setUserId(user.getId());
                paperService.addFail(fail);
                // 试题库的统计增加
            }else{
                libraryService.updateLibraryPassQuantity(paper1.getLibraryId());
            }
        }
        libraryService.updateLibraryDoneQuantity(paper1.getLibraryId(), shorterNum);
        // 统计总分
        int scoreCount = paperService.countPaperScore(checkQuestionList);
        mv.addObject("scoreCount",scoreCount);
        // 提交试卷信息
        Paper paper = paperService.showPaperDetail(paperId);
        paper.setState(1);// 设置状态为完成
        paper.setScore(scoreCount); // 设置试卷分数
        paperService.commitPaper(paper);
        // 计算做题答题正确数
        int correctCount = paperService.countPaperCorrectQuestion(checkQuestionList);
        mv.addObject("correctCount", correctCount);
        mv.addObject("checkQuestions", checkQuestionList);
        session.removeAttribute("paperId");
        session.removeAttribute("subject");
        session.removeAttribute("choiceQuestions");
        session.removeAttribute("judgementQuestions");
        session.removeAttribute("shorterQuestions");
        session.setAttribute("checkQuestions", checkQuestionList);
        return mv;
    }

    @RequestMapping("/showAnswer.do")
    public ModelAndView showAnswer(int questionNo, HttpSession session){
        System.out.println("查看答案: questionNo = " + questionNo);
        ModelAndView mv = new ModelAndView("/WEB-INF/pages/questionDetail.jsp");
        List<CheckQuestion> questions = (List<CheckQuestion>) session.getAttribute("checkQuestions");

        CheckQuestion checkQuestion = questions.get(questionNo - 1);
        int type = checkQuestion.getType();
        int questionId = checkQuestion.getQuestionId();
        int id = checkQuestion.getId();
        if(type == 1){
            Choice choice = questionService.showChoiceDetail(questionId);
            mv.addObject("choice", choice);
            // 获取试卷上当时自己的答案
            ChoiceQuestion choiceQuestion = paperService.showChoiceQuestion(id);
            mv.addObject("userAnswer", choiceQuestion.getMyAnswer());
            mv.addObject("type", 1);
        }else if(type == 2){
            Judgement judgement = questionService.showJudgementDetail(questionId);
            System.out.println(judgement);
            mv.addObject("judgement", judgement);
            // 获取试卷上当时自己的答案
            JudgementQuestion judgementQuestion = paperService.showJudgementQuestion(id);
            mv.addObject("userAnswer", judgementQuestion.getMyAnswer());
            mv.addObject("type", 2);
        }else{
            Shorter shorter = questionService.showShorterDetail(questionId);
            System.out.println(shorter);
            mv.addObject("shorter", shorter);
            // 获取试卷上当时自己的答案
            ShorterQuestion shorterQuestion = paperService.showShorterQuestion(id);
            mv.addObject("userAnswer", shorterQuestion.getMyAnswer());
            mv.addObject("type", 3);
        }
        Note note = new Note();
        note.setTypeId(type);
        note.setQuestionId(id);
        // 获取试题的所有笔记信息
        List<Note> notes = noteService.listNoteUnderQuestion(note);
        mv.addObject("notes",notes);
        mv.addObject("noteCount",notes.size());
        return mv;
    }


    @RequestMapping("/detail.do")
    public ModelAndView showPaperDetails(int paperId){
        ModelAndView mv = new ModelAndView("/WEB-INF/pages/paperDetail.jsp");
        List<ChoiceQuestion> choiceQuestions = paperService.showChoiceQuestionUnderPaper(paperId);
        for(ChoiceQuestion cq : choiceQuestions){
            Choice choice = questionService.showChoiceDetail(cq.getChoiceId());
            cq.setChoice(choice);
        }
        List<JudgementQuestion> judgementQuestions = paperService.showJudgementQuestionUnderPaper(paperId);
        for(JudgementQuestion jq : judgementQuestions){
            Judgement judgement = questionService.showJudgementDetail(jq.getJudgementId());
            jq.setJudgement(judgement);
        }
        List<ShorterQuestion> shorterQuestions = paperService.showShorterQuestionUnderPaper(paperId);
        for(ShorterQuestion sq : shorterQuestions){
            Shorter shorter = questionService.showShorterDetail(sq.getShorterId());
            sq.setShorter(shorter);
        }
        mv.addObject("choiceQuestions", choiceQuestions);
        mv.addObject("judgementQuestions", judgementQuestions);
        mv.addObject("shorterQuestions", shorterQuestions);
        return mv;
    }
    @RequestMapping("/continue.do")
    public ModelAndView goOn(int paperId, HttpSession session, Model model){
        ModelAndView mv = new ModelAndView("redirect:test.do");
        // 获取该试卷下的所有试题
        List<ChoiceQuestion> choiceQuestions = paperService.listChoiceQuestionUnderPaper(paperId);
        List<JudgementQuestion> judgementQuestions = paperService.listJudgementQuestionUnderPaper(paperId);
        List<ShorterQuestion> shorterQuestions = paperService.listShorterQuestionUnderPaper(paperId);

        Paper paper = paperService.selectPaperById(paperId);
        Library library = libraryService.selectLibraryById(paper.getLibraryId());
        Subject subject = subjectService.showSubjectDetail(library.getSubjectId());

        // 将试卷信息存入session
        session.setAttribute("subject", subject.getSubjectName());
        session.setAttribute("paperId", paperId);
        session.setAttribute("choiceQuestions",choiceQuestions);
        session.setAttribute("judgementQuestions", judgementQuestions);
        session.setAttribute("shorterQuestions", shorterQuestions);
        model.addAttribute("questionNo", 1);
        return mv;
    }

}
