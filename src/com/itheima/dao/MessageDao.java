package com.itheima.dao;

import com.itheima.po.Message;
import com.itheima.po.Visitor;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @program: dormitorySystem
 * @description: 访客
 * @author: Joyrocky
 * @create: 2019-05-14 12:57
 **/
public interface MessageDao {
    /**
     * 进行分页查询
     */

    //获取总条数
    public Integer totalCount();
    //获取用户列表
    public List<Message> getMessageList(@Param("currentPage")Integer currentPage, @Param("pageSize")Integer pageSize);

    public int addMessage(Message visitor);

    public List<Message> getAll();

}
