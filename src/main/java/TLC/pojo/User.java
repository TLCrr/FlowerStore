package TLC.pojo;

public class User {
	private int uid;
	private String username;
	private String password;
	private int type;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(int uid, String username, String password, int type) {
		super();
		this.uid = uid;
		this.username = username;
		this.password = password;
		this.type = type;
	}
	public User(int uid, String username, String password) {
		super();
		this.uid = uid;
		this.username = username;
		this.password = password;
	}
	public User(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	@Override
	public String toString() {
		return "User [uid=" + uid + ", username=" + username + ", password=" + password + ", type=" + type + "]";
	}
	
}
