package com.itheima.controller;

import com.itheima.po.Message;
import com.itheima.po.PageInfo;
import com.itheima.po.Visitor;
import com.itheima.service.MessageService;
import com.itheima.service.VisitorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @program: dormitorySystem
 * @description: 公告管理
 * @author: Joyrocky
 * @create: 2019-05-14 12:37
 **/
@Controller
public class MessageController {
    //依赖注入
    @Autowired
    private MessageService messageService;
    /**
     * 分页查询
     * pageIndex 当前页码
     * pageSize  显示条数
     */
    @RequestMapping(value = "/findMessage")
    public String findMessage(Integer pageIndex,
                              Integer pageSize, Model model) {

        PageInfo<Message> pi = messageService.findPageInfo(
                                                pageIndex,pageSize);
        model.addAttribute("pi",pi);
        return "message_list";
    }

    /**
     * 分页查询
     * pageIndex 当前页码
     * pageSize  显示条数
     */
    @RequestMapping(value = "/findMessageS")
    public String findMessageS(Integer pageIndex,
                              Integer pageSize, Model model) {

        PageInfo<Message> pi = messageService.findPageInfo(
                pageIndex,pageSize);
        model.addAttribute("pi",pi);
        return "message_lists";
    }

    /**
     * 导出Excel
     */
    @RequestMapping(value = "/exportMessagelist", method = RequestMethod.POST)
    @ResponseBody
    public List<Message> exportMessage(){
        List<Message> messageList = messageService.getAll();
        return messageList;
    }

    /**
     * 添加学生信息
     */

    @RequestMapping(value = "/addMessage" ,method = RequestMethod.POST)
    @ResponseBody
    public String addStudent(@RequestBody Message message) {
        int v = messageService.addVisitor(message);
        return "message_list";
    }

}

