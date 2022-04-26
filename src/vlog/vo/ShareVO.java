package vlog.vo;

public class ShareVO {
	private int share_no; //게시물번호
	private String share_title; //제목
	private String share_date; //등록일
	private String share_cont; //내용
	private String gen_id; //일반회원아이디
	private String share_lucky; //당첨자 
	
	public int getShare_no() {
		return share_no;
	}
	public void setShare_no(int share_no) {
		this.share_no = share_no;
	}
	public String getShare_title() {
		return share_title;
	}
	public void setShare_title(String share_title) {
		this.share_title = share_title;
	}
	public String getShare_date() {
		return share_date;
	}
	public void setShare_date(String share_date) {
		this.share_date = share_date;
	}
	public String getShare_cont() {
		return share_cont;
	}
	public void setShare_cont(String share_cont) {
		this.share_cont = share_cont;
	}
	public String getGen_id() {
		return gen_id;
	}
	public void setGen_id(String gen_id) {
		this.gen_id = gen_id;
	}
	public String getShare_lucky() {
		return share_lucky;
	}
	public void setShare_lucky(String share_lucky) {
		this.share_lucky = share_lucky;
	}
}
