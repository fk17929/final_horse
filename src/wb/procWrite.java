package wb;

import java.util.*;
import java.text.*;

public class procWrite {
	private String docIdx;
	private String USERID;
	private String writeMode;
	private String WRITER;
	private String TITLE;
	private String CONTENTS;
	private String Query;
	private java.util.Date date;
	SimpleDateFormat simformat;

	public procWrite() {
		docIdx = "";
		writeMode = "";
		WRITER = "";
		TITLE = "";
		CONTENTS = "";
		Query = "";
	}

	public void setIdx(String idx) {
		docIdx = idx;
	}

	public void setMode(String mode) {
		writeMode = mode;
	}

	public void setContents(String contents) {

   	this.CONTENTS = contents;

	}


	public void setTitle(String title) {
		this.TITLE = title;
	}

	public void setUid(String userid) {
		this.USERID = userid;
	}

	public String getIdx() {
		return docIdx;
	}

	public String getUserid() {
		return USERID;
	}

	public String getTitle() {
		return TITLE;
	}

	public String getContents() {
		return CONTENTS;
	}

	public String getMode() {
		if (writeMode.equalsIgnoreCase("W"))
			return "W";
		else if (writeMode.equalsIgnoreCase("R"))
			return "R";
		else if (writeMode.equalsIgnoreCase("D"))
			return "D";
		return "E";
	}

	public String getPrtmode() {
		if (writeMode.equalsIgnoreCase("W"))
			return "WRITE MODE";
		else if (writeMode.equalsIgnoreCase("R"))
			return "READ MODE";
		return "EDIT MODE";
	}

	public String getDate() {
		date = new java.util.Date();
		simformat = new SimpleDateFormat("yyyy-MM-dd");
		return (simformat.format(date)).toString();
	}
}