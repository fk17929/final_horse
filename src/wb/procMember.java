package wb;

public class procMember {
	private String uid;
	private String upw;
	private String uname;

	public procMember() {
		uid = "";
		upw = "";
		uname = "";
	}

	public void setUid(String userid) {
		uid = userid;
	}

	public void setUpw(String userpw) {
		upw = userpw;
	}

	public void setUname(String username) {
		uname = username;
	}

	public String getUid() {
		return uid;
	}

	public String getUpw() {
		return upw;
	}

	public String getUname() {
		return uname;
	}
}