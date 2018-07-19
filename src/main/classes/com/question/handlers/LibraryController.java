package com.question.handlers;

import com.question.beans.Library;
import com.question.beans.Subject;
import com.question.beans.User;
import com.question.service.ILibraryService;
import com.question.service.ISubjectService;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/library")
public class LibraryController {

    @Resource(name = "subjectService")
    private ISubjectService subjectService;

    @Resource(name = "libraryService")
    private ILibraryService libraryService;

    @RequestMapping("/all.do")
    public ModelAndView showAllSubject(HttpSession session){
        ModelAndView mv = new ModelAndView("/WEB-INF/pages/allSubject.jsp");
        User user = (User) session.getAttribute("user");
        // 获取个人题库列表
        List<Library> libraries = libraryService.listUserLibrary(user);
        mv.addObject("libraries", libraries);

        List<Integer> subjectIDList = new ArrayList<>();
        for(Library library : libraries){
            subjectIDList.add(library.getSubjectId());
        }
        // 获取所有题库列表
        List<Subject> subjects = subjectService.listAllSubject();

        // 筛选出用户已经导入的题库
        for(Subject subject : subjects){
            if(subjectIDList.contains(subject.getId())){
                subject.setExport(1);
            }else{
                subject.setExport(0);
            }
        }
        mv.addObject("subjects", subjects);
        return mv;
    }

    @RequestMapping("myLibrary.do")
    public ModelAndView showUserLibrary(HttpSession session){
        ModelAndView mv = new ModelAndView("/WEB-INF/pages/myLibrary.jsp");
        User user = (User) session.getAttribute("user");
        // 获取个人题库列表
        List<Library> libraries = libraryService.listUserLibrary(user);
        mv.addObject("libraries", libraries);
        return mv;
    }

    @RequestMapping("/import.do")
    public void importSubject(int subjectId, HttpSession session, HttpServletResponse response) throws IOException {
        User user = (User) session.getAttribute("user");
        Library library = new Library();
        library.setUserId(user.getId());
        library.setSubjectId(subjectId);
        libraryService.addLibrary(library);
        PrintWriter out = response.getWriter();
        Map<String, String> map = new HashMap<>();
        map.put("msg", "导入成功");
        JSONObject json = JSONObject.fromObject(map);
        String jsonStr = json.toString();
        out.print(jsonStr);
    }

    @RequestMapping("remove.do")
    public void removeLibrary(int libraryId, HttpServletResponse response) throws IOException {
        libraryService.deleteLibrary(libraryId);
        PrintWriter out = response.getWriter();
        Map<String, String> map = new HashMap<>();
        map.put("msg", "导入成功");
        JSONObject json = JSONObject.fromObject(map);
        String jsonStr = json.toString();
        out.print(jsonStr);
    }
}
