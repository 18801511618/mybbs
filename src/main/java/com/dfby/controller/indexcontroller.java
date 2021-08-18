package com.dfby.controller;

import com.dfby.entity.Topic;
import com.dfby.service.BoardService;
import com.dfby.service.BoardTypeService;
import com.dfby.service.TopicService;
import com.dfby.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class indexcontroller {
    @Autowired
    private BoardTypeService boardtypeService;
    @Autowired
    private BoardService boardService;
     @RequestMapping("/index")
     public String shouye(Model model) {
      model.addAttribute("boardtypeList", boardtypeService.selectall());
      return "index";
    }
    @RequestMapping("/detail")
    public String detail(Model model) {
        return "detail";
    }
    @RequestMapping("/list")
    public String list(Model model) {
        model.addAttribute("boardList", boardService.selectall());
        return "list";
    }
    @RequestMapping("/reg")
    public String reg(Model model) {
        return "reg";
    }
    @RequestMapping("/update")
    public String update(Model model) {
        return "update";
    }
}




