package com.itheima.service;

import com.itheima.po.Message;
import com.itheima.po.PageInfo;
import com.itheima.po.Visitor;

import java.util.List;

/**
 * @program: dormitorySystem
 * @description: 访客
 * @author: Joyrocky
 * @create: 2019-05-14 12:39
 **/
public interface MessageService {
    //分页查询
    public PageInfo<Message> findPageInfo(Integer pageIndex, Integer pageSize);
    public int addVisitor(Message visitor);   //添加访客信息
    public List<Message> getAll();
}
