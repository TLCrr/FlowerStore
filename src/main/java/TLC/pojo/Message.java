package TLC.pojo;

public class Message {
    private int message_id;
    private String cus_username;
    private String content;

    public Message() {
    }

    public Message(int message_id, String cus_username, String content) {
        this.message_id = message_id;
        this.cus_username = cus_username;
        this.content = content;
    }

    public Message(String cus_username, String content) {
        this.cus_username = cus_username;
        this.content = content;
    }

    public int getMessage_id() {
        return message_id;
    }

    public void setMessage_id(int message_id) {
        this.message_id = message_id;
    }

    public String getCus_username() {
        return cus_username;
    }

    public void setCus_username(String cus_username) {
        this.cus_username = cus_username;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
