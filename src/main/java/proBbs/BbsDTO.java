package proBbs;

public class BbsDTO {
	private String bbsID;
	private String bbsTitle;
	private String memberID;
	private String bbsDate;
	private String bbsContent;
	private String bbsAvailable;
	
	public String getBbsID() {
		return bbsID;
	}
	public void setBbsID(String bbsID) {
		this.bbsID = bbsID;
	}
	public String getBbsTitle() {
		return bbsTitle;
	}
	public void setBbsTitle(String bbsTitle) {
		this.bbsTitle = bbsTitle;
	}
	public String getMemberID() {
		return memberID;
	}
	public void setMemberID(String memberID) {
		this.memberID = memberID;
	}
	public String getBbsDate() {
		return bbsDate;
	}
	public void setBbsDate(String bbsDate) {
		this.bbsDate = bbsDate;
	}
	public String getBbsContent() {
		return bbsContent;
	}
	public void setBbsContent(String bbsContent) {
		this.bbsContent = bbsContent;
	}
	public String getBbsAvailable() {
		return bbsAvailable;
	}
	public void setBbsAvailable(String bbsAvailable) {
		this.bbsAvailable = bbsAvailable;
	}
}
