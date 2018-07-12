package com.question.handlers;

import com.question.beans.*;
import com.question.service.INoteService;
import com.question.service.IPaperService;
import com.question.service.IQuestionService;
import com.question.service.ISubjectService;
import com.sun.deploy.net.HttpResponse;
import net.sf.json.JSON;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/question")
public class QuestionController {

    @Resource(name = "questionService")
    private IQuestionService questionService;

    @Resource(name = "paperService")
    private IPaperService paperService;

    @Resource(name = "noteService")
    private INoteService noteService;

    @Resource(name = "subjectService")
    private ISubjectService subjectService;

    /**
     * 查看题目详情
     * @return
     */
    @RequestMapping("/{type}/{id}/detail.do")
    public ModelAndView showDetail(@PathVariable("type") int type, @PathVariable("id") int id){
        ModelAndView mv = new ModelAndView("/WEB-INF/pages/failDetail.jsp");
        System.out.println(type);
        System.out.println(id);
        if(type == 1){
            Question question = questionService.showChoiceDetail(id);
            List<ChoiceOption> options = ((Choice) question).getOptions();
            for(ChoiceOption option : options){
                System.out.println("text"+option);
            }
            mv.addObject("question", question);
            // 获取试卷上当时自己的答案
            ChoiceQuestion choiceQuestion = paperService.showChoiceQuestion(id);
            mv.addObject("userAnswer", choiceQuestion.getMyAnswer());
        }else if(type == 2){
           Question question = questionService.showJudgementDetail(id);
           mv.addObject("question", question);
            // 获取试卷上当时自己的答案
            JudgementQuestion judgementQuestion = paperService.showJudgementQuestion(id);
            mv.addObject("userAnswer", judgementQuestion.getMyAnswer());
        }else{
           Question question = questionService.showShorterDetail(id);
           mv.addObject("question", question);
            // 获取试卷上当时自己的答案
            ShorterQuestion shorterQuestion = paperService.showShorterQuestion(id);
            mv.addObject("userAnswer", shorterQuestion.getMyAnswer());
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

    @RequestMapping("/upload.do")
    public ModelAndView uploadQuestion(){

        return new ModelAndView("/WEB-INF/pages/uploadQuestion.jsp");
    }

    @RequestMapping("/option.do")
    public ModelAndView uploadChoice(int chapterId, int typeId, String title, int level, HttpSession session){
        ModelAndView mv = new ModelAndView("/WEB-INF/pages/uploadOption.jsp");
        User user = (User) session.getAttribute("user");
        if(typeId == 1){
            Choice choice = new Choice();
            choice.setUserId(user.getId());
            choice.setChapterId(chapterId);
            choice.setTitle(title);
            choice.setLevel(level);
            questionService.addChoice(choice);
            System.out.println("choice id = "+choice.getId());
            mv.addObject("questionId", choice.getId());
        }
        return mv;
    }

    @RequestMapping("/saveOption.do")
    public ModelAndView saveOption(int questionId, String[] header, String[] content, int[] correct){
        ModelAndView mv = new ModelAndView("/WEB-INF/pages/home.jsp");
        System.out.println("questionId = " + questionId);
        for(int i = 0 ; i < header.length; i++){
            ChoiceOption choiceOption = new ChoiceOption();
            choiceOption.setHeader(header[i]);
            choiceOption.setContent(content[i]);
            choiceOption.setCorrect(correct[i]);
            choiceOption.setChoiceId(questionId);
            questionService.addOptionForChoice(choiceOption);
        }

        return mv;
    }

}
