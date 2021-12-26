package com.itheima.service.impl;

import com.itheima.dao.MessageDao;
import com.itheima.dao.VisitorDao;
import com.itheima.po.Message;
import com.itheima.po.PageInfo;
import com.itheima.po.Visitor;
import com.itheima.service.MessageService;
import com.itheima.service.VisitorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 **/
@Service("messageService")
@Transactional
public class MessageServiceImpl implements MessageService {


    @Autowired
    private MessageDao messageDao;


    //分页查询
    @Override
    public PageInfo<Message> findPageInfo(Integer pageIndex, Integer pageSize) {
        PageInfo<Message> pi = new PageInfo<Message>();
        pi.setPageIndex(pageIndex);
        pi.setPageSize(pageSize);
        //获取总条数
        Integer totalCount = messageDao.totalCount();
        if (totalCount>0){
            pi.setTotalCount(totalCount);
            //currentPage = (pageIndex-1)*pageSize  当前页码数减1*最大条数=开始行数
            List<Message> messageList =	messageDao.getMessageList(
                    (pi.getPageIndex()-1)*pi.getPageSize(),pi.getPageSize());
            pi.setList(messageList);
        }
        return pi;
    }

    @Override
    public List<Message> getAll(){
        List<Message> messageList = messageDao.getAll();
        return messageList;
    }

    //添加学生信息
    @Override
    public  int addVisitor(Message message) {
        return messageDao.addMessage(message);
    }
}

