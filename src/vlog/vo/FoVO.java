package vlog.vo;

import com.sun.xml.internal.ws.api.ha.StickyFeature;

public class FoVO {
	
	
	//펀딩올림 테이블
	private int fo_no;	//펀딩올림번호
	private String std_id;	//구성원 아이디
	private String fo_title;		//펀딩올림제목
	private String fo_rprod;		//펀딩올림물건
	private String fo_cont;			//펀딩올림내용
	private String fo_date;			//펀딩올림날짜
	private String fo_check;
	
	
	
	public int getFo_no() {
		return fo_no;
	}
	public void setFo_no(int fo_no) {
		this.fo_no = fo_no;
	}
	public String getStd_id() {
		return std_id;
	}
	public void setStd_id(String std_id) {
		this.std_id = std_id;
	}
	public String getFo_title() {
		return fo_title;
	}
	public void setFo_title(String fo_title) {
		this.fo_title = fo_title;
	}
	public String getFo_rprod() {
		return fo_rprod;
	}
	public void setFo_rprod(String fo_rprod) {
		this.fo_rprod = fo_rprod;
	}
	public String getFo_cont() {
		return fo_cont;
	}
	public void setFo_cont(String fo_cont) {
		this.fo_cont = fo_cont;
	}
	public String getFo_date() {
		return fo_date;
	}
	public void setFo_date(String fo_date) {
		this.fo_date = fo_date;
	}
	public String getFo_check() {
		return fo_check;
	}
	public void setFo_check(String fo_check) {
		this.fo_check = fo_check;
	}
	
	
	
}
	
	