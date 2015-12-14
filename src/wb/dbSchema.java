package wb;

public class dbSchema {
	private String docIdx;
	private String userId;
	private String docTitle;
	private String docDate;
	private String docHits;
	private String docContents;

	public dbSchema() {
		docIdx = "";
		userId = "";
		docTitle = "";
		docDate = "";
		docHits = "";
	}

	public void setDocIdx(String idx) {
		docIdx = idx;
	}

	public void setUserId(String id) {
		userId = id;
	}

	public void setDocTitle(String title) {
		docTitle = title;
	}

	public void setDocDate(String date) {
		docDate = date;
	}

	public void setDocHits(String hits) {
		docHits = hits;
	}

	public void setDocContents(String contents) {
		docContents = contents;
	}

	public String getDocIdx() {
		return docIdx;
	}

	public String getUserId() {
		return userId;
	}

	public String getDocTitle() {
		return docTitle;
	}

	public String getDocDate() {
		return docDate;
	}

	public String getDocHits() {
		return docHits;
	}

	public String getDocContents() {
		return docContents;
	}

}