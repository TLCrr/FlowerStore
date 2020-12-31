package TLC.dao;

import TLC.pojo.User;

import java.util.List;

public interface UserDao {
public int register(User user);//注册（将用户信息添加到数据路）
public int login(User user);//登录（将数据库的信息与页面输入的信息相匹配）
public List<User> findUser();//显示用户信息（用集合将用户信息存储）
public int deleteUser(int uid);//根据用户ID来删除用户的信息
public int addUser(User user);//添加用户信息（将用户信息添加到数据路）
public User showUserByUsername(String username);//根据用户名来查询相关信息，返回查询到的相关信息
public int update_password(String password, String password2, String username);//根据输入的旧密码和新密码来修改密码
}
