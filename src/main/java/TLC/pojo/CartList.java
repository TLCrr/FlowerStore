package TLC.pojo;
public class CartList {
    private int shoping_id;
    private String flower_name;
    private int flower_price;
    private String username;

    public int getShoping_id() {
        return shoping_id;
    }

    public void setShoping_id(int shoping_id) {
        this.shoping_id = shoping_id;
    }

    public String getFlower_name() {
        return flower_name;
    }

    public void setFlower_name(String flower_name) {
        this.flower_name = flower_name;
    }

    public int getFlower_price() {
        return flower_price;
    }

    public void setFlower_price(int flower_price) {
        this.flower_price = flower_price;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public CartList(int shoping_id, String flower_name, int flower_price, String username) {
        this.shoping_id = shoping_id;
        this.flower_name = flower_name;
        this.flower_price = flower_price;
        this.username = username;
    }

    public CartList(String flower_name, int flower_price, String username) {
        this.flower_name = flower_name;
        this.flower_price = flower_price;
        this.username = username;
    }

    public CartList(String flower_name, int flower_price) {
        this.flower_name = flower_name;
        this.flower_price = flower_price;
    }

    public CartList(int shoping_id, String flower_name, int flower_price) {
        this.shoping_id = shoping_id;
        this.flower_name = flower_name;
        this.flower_price = flower_price;
    }

    @Override
    public String toString() {
        return "shopping_cart{" +
                "shoping_id=" + shoping_id +
                ", flower_name='" + flower_name + '\'' +
                ", flower_price=" + flower_price +
                ", username='" + username + '\'' +
                '}';
    }
}

