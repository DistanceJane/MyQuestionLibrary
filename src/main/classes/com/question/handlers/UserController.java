package com.question.handlers;
import com.question.beans.*;
import com.question.service.*;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;


@Controller
@RequestMapping("/personal")
public class UserController {

    @Resource(name = "userService")
    private IUserService userService;

    @Resource(name = "subjectService")
    private ISubjectService subjectService;

    @Resource(name = "libraryService")
    private ILibraryService libraryService;

    @Resource(name = "questionService")
    private IQuestionService questionService;

    @Resource(name = "paperService")
    private IPaperService paperService;

    @Resource(name = "noteService")
    private INoteService noteService;

    /**
     *  进入个人主页
     * @return
     */
    @RequestMapping("/mine.do")
    public ModelAndView enterMyCenter(){
        return new ModelAndView("/WEB-INF/pages/mine.jsp");
    }

    /**
     * 进入个人题库
     * @return
     */
    @RequestMapping("/library.do")
    public ModelAndView showLibrary(HttpSession session){

        ModelAndView mv = new ModelAndView("/WEB-INF/pages/library.jsp");
        User user = (User) session.getAttribute("user");
        // 获取个人题库列表
        List<Library> libraries = libraryService.listUserLibrary(user);
        mv.addObject("libraries", libraries);
        // 获取所有题库列表
        List<Subject> subjects = subjectService.listAllSubject();
        return mv;
    }

    /**
     * 进入练习
     * @return
     */
    @RequestMapping("/exercise.do")
    public ModelAndView doExercise(HttpSession session){
        ModelAndView mv = new ModelAndView("/WEB-INF/pages/exercise.jsp");
        User user = (User) session.getAttribute("user");
        // 获取个人题库列表
        List<Library> libraries = libraryService.listUserLibrary(user);
        mv.addObject("libraries", libraries);
        return mv;
    }

    /**
     * 查看错题
     * @return
     */
    @RequestMapping("/failure.do")
    public ModelAndView showFailure(HttpSession session){
        ModelAndView mv = new ModelAndView("/WEB-INF/pages/failure.jsp");
        User user = (User) session.getAttribute("user");
        // 获取试题列表
        List<Question> questions = paperService.listUserFailure(user);
        for(Question question : questions){
            System.out.println(question);
        }
        mv.addObject("questions", questions);
        // 统计总错题数
        mv.addObject("failSum", questions.size());
        // 未通过的错题数
        Library libraryCount = libraryService.countLibrary(user);
        mv.addObject("failCount", libraryCount.getFailQuantity());
        return mv;
    }

    /**
     * 查看试卷
     * @return
     */
    @RequestMapping("/paper.do")
    public ModelAndView showPaper(HttpSession session){
        ModelAndView mv = new ModelAndView("/WEB-INF/pages/paper.jsp");
        User user = (User) session.getAttribute("user");
        List<Paper> papers = paperService.ListUserPaper(user);
        mv.addObject("papers", papers);
        mv.addObject("paperCount", papers.size());
        return mv;
    }


    /**
     * 查看个人笔记
     * @return
     */
    @RequestMapping("/note.do")
    public ModelAndView showNote(){
        return new ModelAndView("/WEB-INF/pages/note.jsp");
    }

    /**
     * 查看个人信息设置
     * @return
     */
    @RequestMapping("/info.do")
    public ModelAndView showInfo(){
        return new ModelAndView("/WEB-INF/pages/info.jsp");
    }

    /**
     * 设置个人账户信息
     * @return
     */
    @RequestMapping("/setting.do")
    public ModelAndView setting(){
        return new ModelAndView("/WEB-INF/pages/setting.jsp");
    }

    /**
     * 个人记录页
     * @return
     */
    @RequestMapping("/recorder.do")
    public ModelAndView recorder(){
        return new ModelAndView("/WEB-INF/pages/recorder.jsp");
    }


}
