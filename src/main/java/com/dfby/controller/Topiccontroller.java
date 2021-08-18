package com.dfby.controller;

import com.dfby.dao.TopicMapper;
import com.dfby.entity.Topic;
import com.dfby.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/topic")
public class Topiccontroller {

    @Autowired
    private TopicMapper topicMapper;

    @RequestMapping("/list")
    public String list(Topic topic , Page page,Model model) {
        if(page==null){
            page=new Page();
        }
        page.set;
        page.setPageLiat();
        model.addAttribute("mypage",page);
        return "List" ;
    }
}




