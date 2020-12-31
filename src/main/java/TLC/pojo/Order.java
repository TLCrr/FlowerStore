package TLC.pojo;

public class Order {
    private int  order_id;
    private String cus_name;
    private String cus_sex;
    private String cus_phone;
    private String cus_wechat;
    private String cus_address;
    private String cus_ordertime;
    private String remark;
    private String flower_picture;

    public Order() {
    }

    public Order(int order_id, String cus_name, String cus_sex, String cus_phone, String cus_wechat, String cus_address, String cus_ordertime, String remark) {
        this.order_id = order_id;
        this.cus_name = cus_name;
        this.cus_sex = cus_sex;
        this.cus_phone = cus_phone;
        this.cus_wechat = cus_wechat;
        this.cus_address = cus_address;
        this.cus_ordertime = cus_ordertime;
        this.remark = remark;
    }

    public Order(int order_id, String cus_name, String cus_sex, String cus_phone, String cus_wechat, String cus_address, String cus_ordertime, String remark, String flower_picture) {
        this.order_id = order_id;
        this.cus_name = cus_name;
        this.cus_sex = cus_sex;
        this.cus_phone = cus_phone;
        this.cus_wechat = cus_wechat;
        this.cus_address = cus_address;
        this.cus_ordertime = cus_ordertime;
        this.remark = remark;
        this.flower_picture = flower_picture;
    }

    public String getFlower_picture() {
        return flower_picture;
    }

    public void setFlower_picture(String flower_picture) {
        this.flower_picture = flower_picture;
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public Order(String cus_name, String cus_sex, String cus_phone, String cus_wechat, String cus_address, String cus_ordertime, String remark) {
        this.cus_name = cus_name;
        this.cus_sex = cus_sex;
        this.cus_phone = cus_phone;
        this.cus_wechat = cus_wechat;
        this.cus_address = cus_address;
        this.cus_ordertime = cus_ordertime;
        this.remark = remark;
    }

    public String getCus_name() {
        return cus_name;
    }

    public void setCus_name(String cus_name) {
        this.cus_name = cus_name;
    }

    public String getCus_sex() {
        return cus_sex;
    }

    public void setCus_sex(String cus_sex) {
        this.cus_sex = cus_sex;
    }

    public String getCus_phone() {
        return cus_phone;
    }

    public void setCus_phone(String cus_phone) {
        this.cus_phone = cus_phone;
    }

    public String getCus_wechat() {
        return cus_wechat;
    }

    public void setCus_wechat(String cus_wechat) {
        this.cus_wechat = cus_wechat;
    }

    public String getCus_address() {
        return cus_address;
    }

    public void setCus_address(String cus_address) {
        this.cus_address = cus_address;
    }

    public String getCus_ordertime() {
        return cus_ordertime;
    }

    public void setCus_ordertime(String cus_ordertime) {
        this.cus_ordertime = cus_ordertime;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }
    @Override
    public String toString() {
        return "Order{" +
                "cus_name='" + cus_name + '\'' +
                ", cus_sex='" + cus_sex + '\'' +
                ", cus_phone='" + cus_phone + '\'' +
                ", cus_wechat='" + cus_wechat + '\'' +
                ", cus_address='" + cus_address + '\'' +
                ", cus_ordertime='" + cus_ordertime + '\'' +
                ", remark='" + remark + '\'' +
                '}';
    }
}
