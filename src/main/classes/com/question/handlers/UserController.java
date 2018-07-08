package com.question.handlers;

import com.question.beans.User;
import com.question.service.IUserService;
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
import java.util.Map;

@Controller
@RequestMapping("/user")
public class UserController {

    @Resource(name = "userService")
    private IUserService userService;

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
        return new ModelAndView("/WEB-INF/pages/home.jsp");
    }

    /**
     * 跳转到主页
     * @return
     */
    @RequestMapping("/home.do")
    public ModelAndView home(){
        return new ModelAndView("/WEB-INF/pages/home.jsp");
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
    public ModelAndView showLibrary(){
        return new  ModelAndView("/WEB-INF/pages/library.jsp");
    }

    /**
     * 进入练习
     * @return
     */
    @RequestMapping("/exercise.do")
    public ModelAndView doExercise(){
        return new ModelAndView("/WEB-INF/pages/exercise.jsp");
    }

    /**
     * 查看错题
     * @return
     */
    @RequestMapping("failure.do")
    public ModelAndView showFailure(){
        return new ModelAndView("/WEB-INF/pages/failure.jsp");
    }

    /**
     * 查看试卷
     * @return
     */
    @RequestMapping("paper.do")
    public ModelAndView showPaper(){
        return new ModelAndView("/WEB-INF/pages/paper.jsp");
    }


    /**
     * 查看个人笔记
     * @return
     */
    @RequestMapping("note.do")
    public ModelAndView showNote(){
        return new ModelAndView("/WEB-INF/pages/note.jsp");
    }

    /**
     * 查看个人信息
     * @return
     */
    @RequestMapping("info.do")
    public ModelAndView showInfo(){
        return new ModelAndView("/WEB-INF/pages/info.jsp");
    }

    /**
     * 设置个人账户信息
     * @return
     */
    @RequestMapping("setting.do")
    public ModelAndView setting(){
        return new ModelAndView("/WEB-INF/pages/setting.jsp");
    }

    @RequestMapping("recorder.do")
    public ModelAndView recorder(){
        return new ModelAndView("/WEB-INF/pages/recorder.jsp");
    }
}
