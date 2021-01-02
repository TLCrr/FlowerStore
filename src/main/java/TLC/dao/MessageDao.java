package TLC.dao;

import TLC.pojo.Message;

import java.util.List;

public interface MessageDao {
    public List<Message> findMessage();

    //显示留言的信息
    public int addMessage(Message message);
    //添加留言到数据库

    interface Shopping_cartDao {
    }
}
