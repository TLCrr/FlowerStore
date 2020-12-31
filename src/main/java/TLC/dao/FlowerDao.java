package TLC.dao;

import TLC.pojo.Flower;

import java.util.List;

public interface FlowerDao {
    public List<Flower> showflower();//显示所有鲜花
    public int deleteflower(int flower_id);//根据鲜花的ID对鲜花信息进行删除
    public int addflower(Flower flower);//添加鲜花的信息l
    public Flower Findflower(int flower_id);//根据鲜花ID找到鲜花信息
    public List<Flower> Findflowerbyusername(String username);//通过用户名找到购物车的信息
    public int addcart(Flower flower, String username);//加入购物车，先根据鲜花ID查找出鲜花的信息，
                                                     // 再将鲜花信息和用户名存入购物车的表中，最后读取购物车信息是通过用户名来读取
    public List<Flower> showcart();//显示购物车的信息
    public int updateflower(String flower_name1,int flower_price1,String flower_date1) ;//用鲜花的名字修改鲜花信息
}
