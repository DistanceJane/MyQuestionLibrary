package com.question.handlers;

import com.question.beans.Library;
import com.question.beans.Note;
import com.question.beans.Paper;
import com.question.beans.User;
import com.question.service.*;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class BaseController {
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
     * 跳转到登陆页面
     * @return
     */
    @RequestMapping("/welcome.do")
    public String welcome(){
        return "/WEB-INF/pages/welcome.jsp";
    }

    /**
     * 将用户新注册的账号保存到数据库
     * @param user
     */
    @RequestMapping("/register.do")
    public String register(User user){
        userService.register(user);
        return "/WEB-INF/pages/welcome.jsp";
    }

    /**
     * 接收AJAX传送的username，验证该用户名是否存在
     * @param username
     */
    @RequestMapping("/verifyUsername.do")
    public void verifyUsername(String username, HttpServletResponse response) throws IOException {
        boolean exist = userService.verifyUsername(username);
        Map<String, Boolean> map = new HashMap<>();
        map.put("exist", exist);
        JSONObject json = JSONObject.fromObject(map);
        String jsonStr = json.toString();
        PrintWriter out = response.getWriter();
        out.print(jsonStr);
    }

    /**
     * 将AJAX传到后台的数据进行验证，如果存在该用户就可以登录
     * @param username
     * @param password
     * @param response
     * @throws IOException
     */
    @RequestMapping("/verify.do")
    public void verifyUser(String username, String password, HttpServletResponse response) throws IOException {
        User user = userService.login(username, password);
        Map<String, Boolean> map = new HashMap<>();
        boolean verify = user == null ? false : true;
        map.put("verify",verify);
        JSONObject myJson = JSONObject.fromObject(map);
        String jsonStr = myJson.toString();
        PrintWriter out = response.getWriter();
        out.print(jsonStr);
    }


    /**
     * 根据用户名和密码查找用户信息,将用户信息放入缓存，跳转到系统首页
     * @param username
     * @param password
     * @param session
     * @return
     */
    @RequestMapping("/login.do")
    public ModelAndView login(String username, String password, HttpSession session){
        User user = userService.login(username, password);
        session.setAttribute("user", user);
        return new ModelAndView("forward:home.do");
    }

    /**
     * 跳转到主页
     * @return
     */
    @RequestMapping("/home.do")
    public ModelAndView home(HttpSession session) {
        // 获取到当前的用户
        User user = (User) session.getAttribute("user");
        ModelAndView mv = new ModelAndView("/WEB-INF/pages/home.jsp");
        // 获取用户的试题库信息
        List<Library> libraries = libraryService.listUserLibrary(user);
        mv.addObject("libraries", libraries);
        // 统计用户的试题库做题情况
        Library countLibrary = libraryService.countLibrary(user);
        mv.addObject("countLibrary", countLibrary);
        // 获取用户的所有试卷
        List<Paper> papers = paperService.ListUserPaper(user);
        mv.addObject("papers", papers);
        // 统计用户的试卷完成情况
        int finishPaperCount = paperService.countPaperFinish(user);
        mv.addObject("finishPaperCount",finishPaperCount);
        mv.addObject("paperCount", papers.size());
        // 获取用户的笔记列表
        List<Note> notes = noteService.listUserNote(user);
        mv.addObject("notes", notes);
        return mv;
    }

    /**
     * 退出登录，将用户的信息从session清除
     * @param session
     * @return
     */
    @RequestMapping("/logout.do")
    public String logout(HttpSession session){
        session.removeAttribute("user");
        return "/WEB-INF/pages/welcome.jsp";
    }

    /**
     * 进入题库直接练习
     * @param session
     * @return
     */
    @RequestMapping("/practice.do")
    public ModelAndView shwLibarary(HttpSession session){
        ModelAndView mv = new ModelAndView("/WEB-INF/pages/practice.jsp");
        User user = (User) session.getAttribute("user");
        // 获取个人题库列表
        List<Library> libraries = libraryService.listUserLibrary(user);
        mv.addObject("libraries", libraries);
        return mv;
    }
}
