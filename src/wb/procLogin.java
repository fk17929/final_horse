package wb;

public class procLogin {
	private String UID;
	private String UPW;
	
	public procLogin() {
		UID = "";
		UPW = "";
	}
	
	public void setUserid(String userid) {
		UID = userid;
	}

	public void setUserpw(String userpw) {
		UPW = userpw;
	}

	public String getUserid() {
		return UID;
	}

	public String getUserpw() {
		return UPW;
	}
}