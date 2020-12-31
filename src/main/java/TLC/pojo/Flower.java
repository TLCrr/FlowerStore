package TLC.pojo;

public class Flower {
    private int flower_id;
    private String flower_picture;
    private String flower_name;
    private int flower_price;
    private int flower_count;
    private String flower_date;
    public Flower() {
    }

    public Flower(int flower_id, String flower_picture, String flower_name, int flower_price, String flower_date) {
        this.flower_id = flower_id;
        this.flower_picture = flower_picture;
        this.flower_name = flower_name;
        this.flower_price = flower_price;
        this.flower_date = flower_date;
    }

    public Flower(String flower_picture, String flower_name, int flower_price, String flower_date) {
        this.flower_picture = flower_picture;
        this.flower_name = flower_name;
        this.flower_price = flower_price;
        this.flower_date = flower_date;
    }

    public Flower(String flower_name, int flower_price) {
        this.flower_name = flower_name;
        this.flower_price = flower_price;
    }

    public int getFlower_id() {
        return flower_id;
    }

    public void setFlower_id(int flower_id) {
        this.flower_id = flower_id;
    }

    public String getFlower_picture() {
        return flower_picture;
    }

    public void setFlower_picture(String flower_picture) {
        this.flower_picture = flower_picture;
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

    public int getFlower_count() {
        return flower_count;
    }

    public void setFlower_count(int flower_count) {
        this.flower_count = flower_count;
    }

    public String getFlower_date() {
        return flower_date;
    }

    public void setFlower_date(String flower_date) {
        this.flower_date = flower_date;
    }
}
